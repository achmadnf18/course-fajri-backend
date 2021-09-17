import { Router, Request, Response } from "express";
import AuthController from "../controller/AuthController";
import IRouter from "./RouteInterface";
import BaseRoutes from "./BaseRoutes";
import validate from "../middlewares/AuthValidator";

class AuthRoutes extends BaseRoutes {
    public routes(): void{
        this.router.post("/register", validate, AuthController.register);
        this.router.post("/login", AuthController.login);
    }
}

export default new AuthRoutes().router;