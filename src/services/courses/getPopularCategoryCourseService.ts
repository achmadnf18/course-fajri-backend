import { Request, Response, NextFunction } from 'express';
import { sequelize } from '../../db/models';

const db = require('../../db/models');

const getPopularCategoryCourseService = async (): Promise<any> => {
  try {
    const result = await db.course.findAll({
      where: { is_deleted: 0 },
      group: ['category_id'],
      attributes: [
        [sequelize.col('`category`.`name`'), 'category_name'],
        [sequelize.fn('AVG', sequelize.col('rating')), 'rating']
      ],
      include: [
        { model: db.category, attributes: [] }
      ]
    });

    return result;
  } catch (error: any) {
    console.error(error);
    throw new Error(error);
  }
};

export default getPopularCategoryCourseService;