import express, { response } from 'express';
import config from './config.js';

const app = express();

const port = config.port || 3000;

app.get('/', (req, res) => {
    res.json({ response: 'Hello World' });
});


app.listen(port, () => {
    console.log(`Server is running on port ${port}`); 
});