import bcrypt from 'bcrypt';
import jwt from 'jsonwebtoken';

class Authentication {
    public static passwordHash = async (password: string): Promise<string> => {
      return bcrypt.hash(password, 10);
    }

    public static passwordCompare = async (text: string, encryptedText: string): Promise<boolean> => {
      const result = await bcrypt.compare(text, encryptedText);
      return result;
    }

    public static generateToken = async (props: object): Promise<string> => {
      const secretKey: string = process.env.JWT_SECRET_KEY || '4chm4dnurf4jr1';

      const token: string = jwt.sign(props, secretKey);
      return token;
    }
}

export default Authentication;