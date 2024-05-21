import json

# load in json from data.json
with open('data.json', 'r') as f:
    data = json.load(f)
    menu = data['menu']
    ingredients = data['ingredients']

# connect to the database
import mysql.connector
mydb = mysql.connector.connect(
    host='localhost',
    user='root',
    password='',
    database='kiosk-api'
)

mycursor = mydb.cursor()

# insert the restaurant
for item in menu:
    mycursor.execute('INSERT INTO menu_items (name, description, img_url, category_id) VALUES (%s, %s, %s, %s)', (item['name'], item['description'], item['img_url'], item['category_id']))

for item in ingredients:
    mycursor.execute('INSERT INTO ingredients (name, description, img_url, category_id) VALUES (%s, %s, %s, %s)', (item['name'], item['description'], item['img_url'], item['category_id']))

mydb.commit()