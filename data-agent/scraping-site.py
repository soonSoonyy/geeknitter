import requests
import re
from bs4 import BeautifulSoup

pages = [1,2,3]
url = 'https://www.banul.co.kr/shop/shopbrand.html'
query = "type=Y&xcode=107"

for page in pages : 
    resp = requests.get(f"{url}?{query}&page={page}")
    soup = BeautifulSoup(resp.content, 'html.parser')

    lis = soup.find_all('li', {'class':'item-list'})

    for li in lis:
        link = li.find('div',re.compile('^thumb')).find('a',{'class' : None}).attrs['href']
        img = li.find('img',re.compile('^MS_prod_img_m')).attrs['src']
        title = li.find('div', re.compile('^pr_name')).string
        print(f"{img} : {title} : {link}")
        




    





