import { createConnection } from "mysql2";
import config from '../config.js';

const connection = createConnection({
    host: config.db_host,
    user: config.db_user,
    port: config.db_port,
    password: config.db_password,
    database: config.db_name
});

export class ResponseHandler {
    constructor() {
        this.sendAllMenuItems = this.sendAllMenuItems.bind(this);
        this.sendMenuItem = this.sendMenuItem.bind(this);
        this.sendAllIngredients = this.sendAllIngredients.bind(this);
        this.sendIngredient = this.sendIngredient.bind(this);

        connection.connect((err) => {
            if (err) {
                console.error("Error connecting to database: " + err.stack);
                return;
            }
            console.log("Connected to database");
            // get all menu items
            connection.query("SELECT * FROM menu_items", (err, results, fields) => {
                if (err) {
                    console.error("Error querying database: " + err.stack);
                    return;
                }
                this.menu_items = results;
                console.log("Got all menu items");
            });
            connection.query("SELECT * FROM ingredients", (err, results, fields) => {
                if (err) {
                    console.error("Error querying database: " + err.stack);
                    return;
                }
                this.ingredients = results;
                console.log("Got all ingredients");
            });
        });
    }   

    sendAllMenuItems(req, res, next) {
        res.json(this.menu_items).status(200);
    }

    sendMenuItem(req, res, next, id = 0) {
        const menuItem = this.menu_items.find(item => item.id === id);
        if (menuItem) {
            res.json(menuItem).status(200);
        } else {
            res.status(404).send({error: true, msg: "Menu item not found"});
        }
    }

    sendMenuCategory (req, res, next, category = 0) {
        const menuCategory = this.menu_items.filter(item => item.category_id === category);
        if (menuCategory.length > 0) {
            res.json(menuCategory).status(200);
        } else {
            res.status(404).send({error: true, msg: "Menu category not found"});
        }
    }

    sendAllIngredients(req, res, next) {
        res.json(this.ingredients).status(200);
    }

    sendIngredient(req, res, next, id = 0) {
        const ingredient = this.ingredients.find(item => item.id === id);
        if (ingredient) {
            res.json(ingredient).status(200);
        } else {
            res.status(404).send({error: true, msg: "Ingredient not found"});
        }
    }

    sendIngredientCategory (req, res, next, category = 0) {
        const ingredientCategory = this.ingredients.filter(item => item.category_id === category);
        if (ingredientCategory.length > 0) {
            res.json(ingredientCategory).status(200);
        } else {
            res.status(404).send({error: true, msg: "Ingredient category not found"});
        }
    }

    postOrder (req, res, next) {
        const order = req.body;
        let id = -1;
        if (order) {
            if (!order.items || order.items.length === 0) {
                res.status(400).send({error: true, msg: "Invalid order"});
                return;
            }

            connection.query("INSERT INTO `orders` () VALUES ();", (err, results, fields) => {
                if (err) {
                    console.error("Error querying database: " + err.stack);
                    res.json({error: true, msg: "Internal server error"}).status(500);
                    return;
                }
                id = results.insertId;

                if (id === -1) {
                    res.json({error: true, msg: "Internal server error"}).status(500);
                    return;
                }

                res.send({id: id}).status(201);
    
                order.items.forEach(item => {
                    connection.query("INSERT INTO `order_details` (`order_id`, `product_id`, `quantity`) VALUES (?, ?, ?);", [id, item.id ?? -1, item.quantity ?? 1], (err, results, fields) => {
                        if (err) {
                            console.error("Error querying database: " + err.stack);
                            return;
                        }
                    });
                });
            });
        } else {
            res.status(400).send({error: true, msg: "Invalid order"});
        }
    }

    getOrders (req, res, next) {
        connection.query("SELECT * FROM orders", (err, results, fields) => {
            if (err) {
                console.error("Error querying database: " + err.stack);
                res.json({error: true, msg: "Internal server error"}).status(500);
                return;
            }

            results.forEach(order => {
                connection.query("SELECT * FROM order_details WHERE order_id = ?", [order.id], (err, results, fields) => {
                    if (err) {
                        console.error("Error querying database: " + err.stack);
                        return;
                    }
                    order.items = results;
                });
            });

            res.json(results).status(200);
        });
    }
}