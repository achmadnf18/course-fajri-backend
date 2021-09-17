import { Request, Response, NextFunction } from 'express';
import { sequelize } from '../../db/models';

const db = require('../../db/models');

const getAllCourseService = async (): Promise<any> => {
  try {
    const result = await db.course.findAll({
      where: { is_deleted: 0 },
      attributes: {
        include: [[sequelize.col('`category`.`name`'), 'category_name']]
      },
      include: [
        { required: true, model: db.category, attributes: [] }
      ]
    });

    return result;
  } catch (error: any) {
    console.error(error);
    throw new Error(error);
  }
};

export default getAllCourseService;