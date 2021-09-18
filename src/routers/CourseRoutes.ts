import CourseController from '../controller/CourseController';
import BaseRoutes from './BaseRoutes';

class CourseRoutes extends BaseRoutes {
  public routes(): void {
    this.router.get('/', CourseController.getAllCourse);
    this.router.get('/popular', CourseController.getPopularCategoryCourse);
    this.router.get('/detail/:id', CourseController.getDetailCourse);
    this.router.get('/category', CourseController.getCategoryCourse);
    this.router.get('/category/:slug', CourseController.getCourseByCategory);
    this.router.get('/discovery', CourseController.discoveryCourse);
  }
}

export default new CourseRoutes().router;