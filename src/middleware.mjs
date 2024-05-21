import config from '../config.js';

export class MiddleWare {
    constructor() {
        this.authenticate = this.authenticate.bind(this);
    }

    authenticate(req, res, next) {
        const API_KEY = req.headers['key'];
        if (API_KEY === config.API_KEY) {
            next();
        } else {
            res.status(401).send({error: true, msg: "Forbidden"});
        }
    }
}