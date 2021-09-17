import { Request, Response, NextFunction } from 'express';

const db = require('../../db/models');

const getCategoryCourseService = async (): Promise<any> => {
  try {
    const result = await db.category.findAll({
      where: { is_deleted: 0 }
    });

    return result;
  } catch (error: any) {
    console.error(error);
    throw new Error(error);
  }
};

export default getCategoryCourseService;