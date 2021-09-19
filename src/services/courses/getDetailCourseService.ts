import { Request, Response, NextFunction } from 'express';
import { sequelize } from '../../db/models';

const db = require('../../db/models');

const getDetailCourseService = async (id: Number): Promise<any> => {
  try {
    const result = await db.course.findOne({
      where: { id, is_deleted: false },
      attributes: {
        include: [
          [sequelize.col('`user`.`full_name`'), 'instructor'],
          [sequelize.col('`category`.`name`'), 'category_name']
        ]
      },
      include: [
        { required: false, model: db.user, attributes: [] },
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

export default getDetailCourseService;