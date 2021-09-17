import AuthController from '../controller/AuthController';
import BaseRoutes from './BaseRoutes';
import { RegisterValidator, LoginValidator } from '../validation/auth';

class AuthRoutes extends BaseRoutes {
  public routes(): void {
    this.router.post('/register', RegisterValidator, AuthController.register);
    this.router.post('/login', LoginValidator, AuthController.login);
  }
}

export default new AuthRoutes().router;