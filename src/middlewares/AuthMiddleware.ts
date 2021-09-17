import { Request, Response, NextFunction } from 'express';
import jwt from 'jsonwebtoken';

const validAuth = (req: Request, res: Response, next: NextFunction): any => {
  try {
    if (!req.headers.authorization) return res.status(401).send('Not Authorized');

    const secretKey: string = process.env.JWT_SECRET_KEY || 'secret';
    const token: string = req.headers.authorization.split(' ')[1];

    const credential: string | object = jwt.verify(token, secretKey);
    if (!credential) throw new Error('Invalid Token');

    req.app.locals.credential = credential;
    return next();
  } catch (error) {
    return res.send(error);
  }
};

export default validAuth;