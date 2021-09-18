import { Request, Response } from 'express';
import validAuth from '../middlewares/AuthMiddleware';
import Authentication from '../utils/Authentication';

const db = require('../db/models');

const JWT_EXPIRES = process.env.JWT_EXPIRES || '14d';
const JWT_EXPIRATION_NUM = process.env.JWT_EXPIRATION_NUM || 60 * 60 * 24 * 14; // 14d
const NODE_ENV = process.env.NODE_ENV || 'development';

class AuthController {
    register = async (req: Request, res: Response): Promise<Response> => {
      const {
        username, password, full_name: fullname, email
      } = req.body;
      console.log(password);
      const hashedPassword: string = await Authentication.passwordHash(password);

      const createdUser = await db.user.create({
        username, full_name: fullname, password: hashedPassword, email
      });

      return res.send(createdUser);
    }

    login = async (req: Request, res: Response): Promise<Response> => {
      // check username is exists
      const { email, password } = req.body;

      const user = await db.user.findOne({ where: { email } });

      // check password
      const compare = await Authentication.passwordCompare(password, (user || {}).password || '');

      // generate token
      if (compare) {
        const userData = { id: user.id, username: user.username };
        const token = await Authentication.generateToken(userData);

        return res.send({ token, user, status: true });
      }

      return res.status(403).send({ error: 'Username or password is not match', status: false });
    }

    checkToken = async (req: Request, res: Response): Promise<Response> => {
      return res.send({ status: true });
    }

    logout = async (req: Request, res: Response): Promise<Response> => {
      return res.send({ message: 'Logout Successfully', status: true });
    }
}

export default new AuthController();