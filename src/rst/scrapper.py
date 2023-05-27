from typing import Union
import re
from bs4 import BeautifulSoup, Tag, NavigableString
from requests import Session
from src.utils import HttpMethods
from multiprocessing.pool import ThreadPool
import multiprocessing
from datetime import datetime

class Scrapper:
    def __init__(self) -> None:
        self.main_uri = '/oldcars/?task=newresults'
        self.base_url = 'https://rst.ua/ukr'
        self.session = Session()


    def get_soup(self, url:Union[str, None]=None, page_num: Union[None, int] = None) -> BeautifulSoup:
        if url is None:
            url = f"{self.base_url}{self.main_uri}&start={page_num}"
        print(f"CALLED GET SOUP WITH URL: {url}")
        # self.session.send()
        response = self.session.request(
            method=HttpMethods.GET.value,
            url=url,
            headers={
                'User-Agent': f'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36',
                'Accept': '*/*',
                'Accept-Encoding': 'gzip, deflate, br'
            }
        )
        return BeautifulSoup(response.text, 'html.parser')
    

    def get_auto_hrefs(self, page_num: int) -> Union[list, bool]:
        soup = self.get_soup(page_num=page_num)
        try:
            hrefs = [
                item.get('href') 
                for item in soup.findAll('a', class_='ai')
            ]
            return hrefs
        except:
            error = soup.find('div', id_='rst-error')
            if error:
                return False
    def _find_parent_text(self, frame: Union[Tag, NavigableString], item_class: str ):
        try:
            return frame.find('i', class_=item_class).parent.text
        except:
            pass

    def parse(self, href) -> Union[dict, None]:
        parsed_data = {}
        soup = self.get_soup(url=f"{self.base_url}{href}")
        main_frame = soup.find('div', id='car-p-i')
        raw_id = re.search('\d+', href)
        id = int(raw_id.group(0))

        # mark NISSAN | model altima
        try:
            mark, model = [ item.text.capitalize() for item in main_frame.find('h2').findAll('a')]
        except Exception as err:
            print(f"{multiprocessing.current_process().name}Err with getting mark, model: {err}")
            mark = None
            model = None
        
        try:
            raw_price = main_frame.find('b').text.split('=')[0]
            price = int(re.sub('\D', string=raw_price,repl=''))
        except Exception as err:
            print(f"{multiprocessing.current_process().name} Err with getting price: {err}")
            price = None

        try:
            year = int(main_frame.find('i', class_='ri-date').parent.find('a').text)
        except Exception as err:
            print(f"{multiprocessing.current_process().name} Err with getting year: {err}")
            year = None

        if not all([mark, model,price,year]):
            print(f"RETURNS NONE: {[mark, model,price,year]}")
            return None
        parsed_data.update({
            "id": id,
            "mark": mark, 
            "model": model,
            "price": price,
            "year": year,
            "href": href
        })

        raw_race = self._find_parent_text(main_frame, 'ri-speed')
        race = None
        if raw_race:
            try:
                race = int(re.sub('\D', string=raw_race, repl=''))
            except:
                pass
        
        geo = main_frame.find('i', class_='ri-geo').parent.find('a').text

        raw_engine = self._find_parent_text(main_frame, 'ri-en') 
        engine_liters = None
        fuel_type = None
        if raw_engine:
            raw_engine = raw_engine.strip().split(' ')
            if len(raw_engine) == 2:
                engine_liters = float(raw_engine[0])
                fuel_type = raw_engine[1]

        gearbox = None
        transmission = None
        gearbox_raw = self._find_parent_text(main_frame, 'ri-tm') 
        if gearbox_raw:
            gearbox_raw = gearbox_raw.strip().split(' ')
            if len(gearbox_raw) == 2:
                gearbox = gearbox_raw[0]
                transmission = gearbox_raw[1]

        category = self._find_parent_text(main_frame, 'ri-cr')

        parsed_data.update({
            "mark": mark, 
            "model": model,
            "price": price,
            "category": category,
            "transmission": transmission,
            "engine_liters": engine_liters,
            "fuel_type": fuel_type,
            "gearbox": gearbox,
            "geo": geo,
            "race": race
        })
        return parsed_data
    
        
    def process_data(self, hrefs):
        with multiprocessing.Pool(multiprocessing.cpu_count() - 1) as process_pool:
            results = process_pool.map(self.parse, hrefs)
            process_pool.close()
            process_pool.join()
        return results

    def start(self):
        current_page = 1
        next_page_exist = True
        max_pages_scrapped = 10
        while next_page_exist and current_page <= max_pages_scrapped:
            hrefs = self.get_auto_hrefs(current_page)
            if not hrefs:
                break
            results = self.process_data(hrefs)
            for result in results:
                if result:
                        # Handle each result individually
                    print('result geted')
                else:
                    print(f'err for hrf')
            current_page += 1
