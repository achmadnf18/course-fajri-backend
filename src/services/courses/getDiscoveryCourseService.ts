import { Request, Response, NextFunction } from 'express';
import { sequelize, Sequelize } from '../../db/models';

const db = require('../../db/models');

const getDiscoveryCourseService = async (keyword: string): Promise<any> => {
  try {
    const result = await db.course.findAll({
      where: {
        is_deleted: false,
        [Sequelize.Op.and]: [
          sequelize.where(sequelize.fn('lower', sequelize.col('name')), 'like', `%${keyword.toLowerCase()}%`)
        ]
      }
    });

    return result;
  } catch (error: any) {
    console.error(error);
    throw new Error(error);
  }
};

export default getDiscoveryCourseService;