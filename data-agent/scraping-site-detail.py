import requests
import re
from bs4 import BeautifulSoup

prefix = 'https://www.banul.co.kr'
url = '/shop/shopdetail.html?branduid=3461425&xcode=107&mcode=001&scode=009&type=Y&sort=manual&cur_code=107&search=&GfDT=bml1W19E'

resp = requests.get(f"{prefix}{url}")
soup = BeautifulSoup(resp.content, 'html.parser')
detail_custom = soup.find_all("div","detail_custom")
for detail_custom_el in detail_custom:
    detail_info = detail_custom_el.find_all('div','clipboard-paste')
    for detail_font_el in detail_info:
        font_info = detail_font_el.find_all('font')

        font_info_str_list = re.sub('<.+?>|\n*|\r*|\t*|\0*|\s{2}|]\B|\[\B|(?<=>,)','',str(font_info),0).strip()
        print(font_info_str_list)

        # print(font_info_str_list)

    





