import AuthController from '../controller/AuthController';
import BaseRoutes from './BaseRoutes';
import { RegisterValidator, LoginValidator } from '../validation/auth';
import validAuth from '../middlewares/AuthMiddleware';

class AuthRoutes extends BaseRoutes {
  public routes(): void {
    this.router.post('/register', RegisterValidator, AuthController.register);
    this.router.post('/login', LoginValidator, AuthController.login);
    this.router.post('/logout', AuthController.logout);
    this.router.get('/checkToken', validAuth, AuthController.checkToken);
  }
}

export default new AuthRoutes().router;