import express, { Express } from "express";

class App {
  private app: Express;
  constructor() {
    this.app = express();
  }

  public config() {}

  private initRouter() {
    this.app.get("/", (_, res, __) => {
      res.send(
        "<body bgcolor='#000' style='color: #fff; text-align: center;'><h1>Welcome to my docker quickstart.</h1></body>"
      );
    });
  }

  public run(port = 3000) {
    this.initRouter();

    this.app.listen(port, () => {
      console.log("Listening at port: http//:localhost:3000");
    });
  }
}

const app = new App();
app.run();
