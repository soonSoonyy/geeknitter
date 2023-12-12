import requests
import re
from bs4 import BeautifulSoup


url = 'https://search.shopping.naver.com/search/all?query'
query = "코튼10"

resp = requests.get(f"{url}={query}")
soup = BeautifulSoup(resp.content, 'html.parser')
products = soup.find_all('a',re.compile('^product_link'))

for product in products:
    title = product.string
    href = product.attrs['href']
    if href != '#' :
        print(f"{title}:{href}")


    





