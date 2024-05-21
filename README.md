# kiosk-api
REST api for a kiosk in a fast food restaurant


# endpoints

## GET:
/api/menu: gets all menu items <br>
/api/menu/{id}: gets specific menu item <br>
/api/menu/category/{id}: gets menu items from a category <br>
/api/ingredients/: gets all ingredients <br>
/api/ingredients/{id}: gets specific ingredient <br>
/api/ingredients/category/{id}: gets ingredients from a specific category <br>
/api/orders: gets all orders <br>

## POST:
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
