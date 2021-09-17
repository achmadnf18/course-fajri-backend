import { Request, Response, NextFunction } from 'express';
import { sequelize } from '../../db/models';

const db = require('../../db/models');

const getDetailCourseService = async (id: Number): Promise<any> => {
  try {
    const result = await db.course.findOne({
      where: { id, is_deleted: 0 },
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

export default getDetailCourseService;