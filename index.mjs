import express, { response } from 'express';
import config from './config.js';
import { ResponseHandler } from './src/response.mjs';
import { MiddleWare } from './src/middleware.mjs';
import cors from 'cors';
import bodyParser from 'body-parser';

const app = express();

const port = config.port || 3000;

const responseHandler = new ResponseHandler();
const middleware = new MiddleWare();

app.use(cors());
app.use(middleware.authenticate);

app.get('/api/menu', responseHandler.sendAllMenuItems);

app.get('/api/menu/:id', (req, res, next) => {
    responseHandler.sendMenuItem(req, res, next, parseInt(req.params.id));
});

app.get('/api/menu/category/:id', (req, res, next) => {
    responseHandler.sendMenuCategory(req, res, next, parseInt(req.params.id));
});


app.get('/api/ingredients', responseHandler.sendAllIngredients);

app.get('/api/ingredients/:id', (req, res, next) => {
    responseHandler.sendIngredient(req, res, next, parseInt(req.params.id));
});

app.get('/api/ingredients/category/:id', (req, res, next) => {
    responseHandler.sendIngredientCategory(req, res, next, parseInt(req.params.id));
});


app.post('/api/order', bodyParser.json(), responseHandler.postOrder);

app.get('/api/orders', responseHandler.getOrders);


app.listen(port, () => {
    console.log(`Server is running on port ${port}`); 
});