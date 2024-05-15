import requests
import re
from bs4 import BeautifulSoup
import sys
 


pages = [1,2,3]
home_url = 'https://www.banul.co.kr'
yarn_list_url = '/shop/shopbrand.html'
query = "type=Y&xcode=107"

for page in pages : 
    resp = requests.get(f"{home_url}{yarn_list_url}?{query}&page={page}")
    soup = BeautifulSoup(resp.content.decode('euc-kr','replace'), 'html.parser')

    lis = soup.find_all('li', {'class':'item-list'})
    print("==============================================Start===============================================================")
    for li in lis:
        link = li.find('div',re.compile('^thumb')).find('a',{'class' : None}).attrs['href']
        img = li.find('img',re.compile('^MS_prod_img_m')).attrs['src']
        title = li.find('div', re.compile('^pr_name')).string

        print(f"{img} : {title} : {link}")
        print("\n ================ detail ============================= \n")
        #detail 정보 
        detail_resp = requests.get(f"{home_url}{link}")
        detail_soup = BeautifulSoup(detail_resp.content.decode('euc-kr','replace'), 'html.parser')
        detail_custom = detail_soup.find_all("div","detail_custom")
        for detail_custom_el in detail_custom:
            detail_info = detail_custom_el.find_all('div','cboth')
            for detail_font_el in detail_info:

                font_info_str_list = re.sub('<.+?>|\n*|\r*|\t*|\0*|\s{2}|]\B|\[\B','',str(detail_font_el),0).strip()
                print(font_info_str_list)

            print('-------------------------------------------------------------------------------------------------------')

    print("=====================================================END========================================================")

        




    





