import { Request, Response } from 'express';
import Authentication from '../utils/Authentication';

const db = require('../db/models');

class AuthController {
    register = async (req: Request, res: Response): Promise<Response> => {
      const { username, password } = req.body;
      const hashedPassword: string = await Authentication.passwordHash(password);

      const createdUser = await db.user.create({ username, password: hashedPassword });

      return res.send(createdUser);
    }

    login = async (req: Request, res: Response): Promise<Response> => {
      // check username is exists
      const { username, password } = req.body;

      const user = await db.user.findOne({ where: { username } });

      // check password
      const compare = await Authentication.passwordCompare(password, user.password);

      // generate token
      if (compare) {
        const token = await Authentication.generateToken(user.id, username, user.password);
        return res.send({ token });
      }

      return res.status(403).send('Username or password is not match');
    }
}

export default new AuthController();