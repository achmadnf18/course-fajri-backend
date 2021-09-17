import bodyParser from "body-parser";
import compression from "compression";
import express, { Application, Request, Response } from "express";
import helmet from "helmet";
import morgan from "morgan";
import cors from "cors";
import { config, config as dotenv } from "dotenv";

// ROUTERS
import UserRoutes from "./routers/UserRoutes";
import AuthRoutes from "./routers/AuthRoutes";

class App {
    public app: Application;

    constructor() {
        this.app = express();
        this.plugins();
        this.routes();
        dotenv();
    }

    protected plugins(): void {
        this.app.use(bodyParser.json());
        this.app.use(morgan("dev"));
        this.app.use(compression());
        this.app.use(helmet());
        this.app.use(cors());
    }

    protected routes(): void {
        this.app.route("/").get((req: Request, res: Response) => {
            res.send("haloo");
        });

        this.app.use("/api/v1/auth", AuthRoutes);
        this.app.use("/api/v1/users", UserRoutes);
    }
}

const port: Number = 3000;
const app = new App().app;
app.listen(port, () => {
    console.log(`listen on port ${port}`);
    console.log(process.env.NODE_ENV);
});

// const app = express();

// app.route("/").get((req, res) => {
//     res.send("hi");
// });

// app.listen(3000);