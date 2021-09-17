import { Request, Response } from "express";
import IController from "./ControllerInterface";

let data: any[] = [
    { id: 1, name: "Fajri" },
    { id: 2, name: "Adi"},
    { id: 3, name: "Ano" }
];

class UserController implements IController {
    index(req: Request, res: Response): Response {
        return res.send(data);
    }
    create(req: Request, res: Response): Response {
        const { id, name } = req.body;
        data.push({ id, name });

        return res.send("create success");
    }
    show(req: Request, res: Response): Response {
        const { id } = req.params;

        let person = data.find(p => p.id == id);
        return res.send(person);
    }
    update(req: Request, res: Response): Response {
        try {
            const { id } = req.params;
            const { name } = req.body;

            let person = data.find(p => p.id == id);
            if(!person) throw new Error(`Invalid for ID: ${id}`);
            person.name = name;

            return res.send("update suksess");
        } catch (err: any) {
            return res.send(err.message);
        }
    }
    delete(req: Request, res: Response): Response {
        try {
            const { id } = req.params;
            const { name } = req.body;

            let person = data.find(p => p.id == id);
            if(!person) throw new Error(`Invalid for ID: ${id}`);

            let peoples = data.filter(p => p.id != id);
            data = peoples;

            return res.send(peoples);
        } catch (err: any) {
            return res.send(err.message);
        }
    }
}

export default new UserController();