import UserController from '../controller/UserController';
import BaseRoutes from './BaseRoutes';
import validAuth from '../middlewares/AuthMiddleware';

class UserRoutes extends BaseRoutes {
  public routes(): void {
    this.router.get('/', validAuth, UserController.index);
    this.router.post('/', validAuth, UserController.create);
    this.router.get('/:id', validAuth, UserController.show);
    this.router.put('/:id', validAuth, UserController.update);
    this.router.delete('/:id', validAuth, UserController.delete);
  }
}

export default new UserRoutes().router;