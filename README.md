# kiosk-api
REST api for a kiosk in a fast food restaurant

## Installation
1. Clone the repository
2. Run `npm i` to install dependencies
3. install MySQL and create a database, either import the kiosk-api.sql file or import your own data
4. edit the config.js file with your database credentials
5. Run `npm start` to start the server

## Endpoints

### GET:
/api/menu: gets all menu items <br>
/api/menu/{id}: gets specific menu item <br>
/api/menu/category/{id}: gets menu items from a category <br>
/api/ingredients/: gets all ingredients <br>
/api/ingredients/{id}: gets specific ingredient <br>
/api/ingredients/category/{id}: gets ingredients from a specific category <br>
/api/orders: gets all orders <br>

### POST:
/api/order: creates a new order <br>
Requires a JSON object in the req body with the following format: <br>
```json
{
    "orderItems": [
        {
            "menuItemId": 1,
            "quantity": 2
        },
        {
            "menuItemId": 2,
            "quantity": 1
        }
    ]
}
```
Sends back the order id
