import { Request, Response, NextFunction } from 'express';
import { sequelize } from '../../db/models';

const db = require('../../db/models');

const getAllCourseService = async (sortBy: string = 'rating', sortType: string = 'desc'): Promise<any> => {
  try {

    if(sortBy == 'popularity') sortBy = 'rating';
    const orderBy = [[sortBy, sortType]] 

    const result = await db.course.findAll({
      where: { is_deleted: false },
      order: orderBy,
      attributes: {
        include: [[sequelize.col('category.name'), 'category_name']]
      },
      include: [
        { required: true, model: db.category, attributes: [] },
        {
          required: false,
          model: db.upload_file_morph,
          include: [
            {
              required: true,
              model: db.upload_file
            }
          ]
        }
      ]
    });

    return result;
  } catch (error: any) {
    console.error(error);
    throw new Error(error);
  }
};

export default getAllCourseService;