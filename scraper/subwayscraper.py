import requests
from bs4 import BeautifulSoup
import json

main_url = 'https://www.subway.com'
url = 'https://www.subway.com/nl-nl/menunutrition/'
response = requests.get(url)
soup = BeautifulSoup(response.text, 'html.parser')

data = {
    'name': 'Subway',
    'menu': []
}

# subway has a dropdown menu for each category, so we can use this to loop through each item
menu_items = soup.find_all('li', class_='drop-class')
for item in menu_items:
    link = main_url + item.find('a')['href']
    
    new_response = requests.get(link)
    new_soup = BeautifulSoup(new_response.text, 'html.parser')

    # check if the item has all the necessary information to prevent errors
    if new_soup.find('h2') is None or new_soup.find('span', id='main_0_centercolumn_0_lblDesc') is None or new_soup.find('img', class_='menuproduct_image')['src'] is None:
        continue

    # get the name, description and image url of the menu item, this is based on the structure of the website
    name = new_soup.find('h2').text.strip()
    description = new_soup.find('span', id='main_0_centercolumn_0_lblDesc').text.strip()
    img_url = main_url + new_soup.find('img', class_='menuproduct_image')['src']

    # get category id from the url query string
    category_id = int(link.split('=')[1].split('&')[0])

    menu_item = {
        'name': name,
        'description': description,
        'img_url': img_url,
        'category_id': category_id
    }

    print(menu_item)
    data['menu'].append(menu_item)

# put in data.json
with open('data.json', 'w') as f:
    json.dump(data, f, indent=4)