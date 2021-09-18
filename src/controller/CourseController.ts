import { Request, Response } from 'express';
import CourseService from '../services/CourseService';

let data: any[] = [
  { id: 1, name: 'Fajri' },
  { id: 2, name: 'Adi' },
  { id: 3, name: 'Ano' }
];

class CourseController {
  async getAllCourse(req: Request, res: Response): Promise<Response> {
    try {
      const service: CourseService = new CourseService(req);
      const courses = await service.getAllCourse();
      return res.send({ data: courses, status: true });
    } catch (error: any) {
      return res.status(500).send({ error: error.message, status: false });
    }
  }

  async getPopularCategoryCourse(req: Request, res: Response): Promise<Response> {
    try {
      const service: CourseService = new CourseService(req);
      const detail = await service.getPopularCategoryCourse();
      return res.send({ data: detail, status: true });
    } catch (error: any) {
      return res.status(500).send({ error: error.message, status: false });
    }
  }

  async getDetailCourse(req: Request, res: Response): Promise<Response> {
    try {
      const service: CourseService = new CourseService(req);
      const detail = await service.getDetailCourse();

      return res.send({ data: detail, status: true });
    } catch (error: any) {
      return res.status(500).send({ error: error.message, status: false });
    }
  }

  async getCategoryCourse(req: Request, res: Response): Promise<Response> {
    try {
      const service: CourseService = new CourseService(req);
      const categories = await service.getCategoryCourse();
      return res.send({ data: categories, status: true });
    } catch (error: any) {
      return res.status(500).send({ error: error.message, status: false });
    }
  }

  async discoveryCourse(req: Request, res: Response): Promise<Response> {
    try {
      const service: CourseService = new CourseService(req);
      const categories = await service.getDiscoveryCourse();
      return res.send({ data: categories, status: true });
    } catch (error: any) {
      return res.status(500).send({ error: error.message, status: false });
    }
  }

  async getCourseByCategory(req: Request, res: Response): Promise<Response> {
    try {
      const service: CourseService = new CourseService(req);
      const categories = await service.getCourseByCategory();
      return res.send({ data: categories, status: true });
    } catch (error: any) {
      return res.status(500).send({ error: error.message, status: false });
    }
  }

  create(req: Request, res: Response): Response {
    const { id, name } = req.body;
    data.push({ id, name });

    return res.send('create success');
  }

  show(req: Request, res: Response): Response {
    const { id } = req.params;

    const person = data.find((p) => { return p.id === id; });
    return res.send(person);
  }

  update(req: Request, res: Response): Response {
    try {
      const { id } = req.params;
      const { name } = req.body;

      const person = data.find((p) => { return p.id === id; });
      if (!person) throw new Error(`Invalid for ID: ${id}`);
      person.name = name;

      return res.send('update suksess');
    } catch (err: any) {
      return res.send(err.message);
    }
  }

  delete(req: Request, res: Response): Response {
    try {
      const { id } = req.params;
      const { name } = req.body;

      const person = data.find((p) => { return p.id === id; });
      if (!person) throw new Error(`Invalid for ID: ${id}`);

      const peoples = data.filter((p) => { return p.id !== id; });
      data = peoples;

      return res.send(peoples);
    } catch (err: any) {
      return res.send(err.message);
    }
  }
}

export default new CourseController();