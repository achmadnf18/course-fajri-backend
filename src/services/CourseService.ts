import { Request } from 'express';
import getCategoryCourseService from './courses/getCategoryCourseService';
import getPopularCategoryCourseService from './courses/getPopularCategoryCourseService';
import getAllCourseService from './courses/getAllCourseService';
import getDetailCourseService from './courses/getDetailCourseService';
import getDiscoveryCourseService from './courses/getDiscoveryCourseService';
import getCourseByCategoryService from './courses/getCourseByCategoryService';

class CourseService {
    credential: {
        id: number
    };

    body: Request['body'];

    params: Request['params'];

    query: Request['query'];

    constructor(req: Request) {
      this.credential = req.app.locals.credential;
      this.body = req.body;
      this.params = req.params;
      this.query = req.query;
    }

    getAllCourse = async () => {
      const sortBy: string = this.query._sortBy as string;
      const sortType: string = this.query._sortType as string;

      const res = await getAllCourseService(sortBy, sortType);
      return res;
    }

    getCategoryCourse = async () => {
      const res = await getCategoryCourseService();
      return res;
    }

    getPopularCategoryCourse = async () => {
      const res = await getPopularCategoryCourseService();
      return res;
    }

    getDetailCourse = async () => {
      const id: Number = parseInt(this.params.id, 10);

      const res = await getDetailCourseService(id);
      return res;
    }

    getDiscoveryCourse = async () => {
      const keyword: string = this.query.s as string;

      const res = await getDiscoveryCourseService(keyword);
      return res;
    }

    getCourseByCategory = async () => {
      const slug: string = this.params.slug;
      const res = await getCourseByCategoryService(slug);
      return res;
    }
}

export default CourseService;