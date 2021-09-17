import { Request, Response } from "express";
import Authentication from "../utils/Authentication";

const db = require("../db/models");

class AuthController {
    register = async (req: Request, res: Response): Promise<Response> => {
        let { username, password } = req.body;
        const hashedPassword: string = await Authentication.passwordHash(password);

        const createdUser = await db.user.create({ username, password: hashedPassword });

        return res.send(createdUser);
    }
    login = async (req: Request, res: Response): Promise<Response> => {
        // check username is exists
        let { username, password } = req.body;

        const user = await db.user.findOne({ where: { username } });
        if(user){
            let compare = await Authentication.passwordCompare(password, user.password);
            if(!compare) return res.status(403).send("Username and password is not match");
            return res.send(compare);
        }
        
        return res.status(403).send("Username is not found");
        
    }
}

export default new AuthController();