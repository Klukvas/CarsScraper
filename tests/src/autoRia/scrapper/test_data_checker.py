from src import DependencyManager
import pytest

@pytest.mark.data_checker
class TestDataChecker:
    dpm = DependencyManager()
    dpm.setup_dependencies()
    data_checker = dpm.data_checker
    
    @pytest.mark.asyncio
    async def test_new_auto_data(self):
        auto_data = {
        "data":{
            "userId":5429230,
            "userBlocked":[
                
            ],
            "locationCityName":"Киев",
            "cityLocative":"Киеве",
            "auctionPossible":False,
            "exchangePossible":False,
            "realtyExchange":False,
            "exchangeType":"Любой",
            "exchangeTypeId":0,
            "addDate":"2023-06-08 12:26:05",
            "updateDate":"2023-06-08 12:26:05",
            "expireDate":"2023-07-08 12:26:05",
            "soldDate":"",
            "userHideADSStatus":False,
            "userPhoneData":{
                "phone":"(xxx) xxx xx xx"
            },
            "UAH":558000,
            "USD":15000,
            "EUR":13897,
            "prices":[
                {
                    "UAH":"558 000",
                    "USD":"15 000",
                    "EUR":"13 897"
                },
                {
                    "isRent":True,
                    "prefix":"от",
                    "title":"в день",
                    "UAH":"6 500",
                    "USD":"174",
                    "EUR":"161",
                    "mainCurrencyId":"UAH",
                    "delimiter":"грн",
                    "type":"daily"
                }
            ],
            "isAutoAddedByPartner":False,
            "partnerId":0,
            "levelData":{
                "level":0,
                "label":0,
                "hotType":"",
                "expireDate":""
            },
            "color":{
                "eng":"yellow",
                "hex":"#fde90f",
                "name":"Желтый"
            },
            "autoData":{
                "active":True,
                "vat":False,
                "description":"Продается мини погрузчик GEHL 5240 2008 года выпуска.\nДвигатель DEUTZ 62 л.с.\nНаработка 3575 мото часов.\nМасса – 3,1т.\nГрузоподъемность – 0,86т.\nВысота выгрузки – 2,27м.\nШирина стандартного ковша – 170 см, (объем – 0,37 м куб)\nГабаритные размеры (ДхШхВ): 3200мм х 1575мм х 1981мм.\n\nЦена указана с НДС.\n\nПо дополнительным вопросам обращайтесь по телефону.",
                "version":"E",
                "generationId":"None",
                "modificationId":"None",
                "equipmentId":"None",
                "onModeration":False,
                "year":2008,
                "autoId":31213329,
                "bodyId":116,
                "statusId":0,
                "withVideo":False,
                "race":"1 тыс. км",
                "raceInt":1,
                "fuelId":2,
                "fuelName":"Дизель",
                "fuelNameEng":"dizel",
                "gearBoxId":2,
                "gearboxName":"Автомат",
                "driveId":1,
                "driveName":"Полный",
                "isSold":False,
                "mainCurrency":"USD",
                "fromArchive":False,
                "categoryId":4,
                "categoryNameEng":"spectehnika",
                "subCategoryNameEng":"minipogruzchik",
                "custom":0,
                "withVideoMessages":False
            },
            "autoInfoBar":{
                "custom":False,
                "abroad":False,
                "onRepairParts":False,
                "damage":False,
                "underCredit":False,
                "confiscatedCar":False
            },
            "markName":"Gehl",
            "markNameEng":"gehl",
            "markId":1689,
            "modelName":"5240",
            "modelNameEng":"5240",
            "modelId":92,
            "subCategoryName":"Минипогрузчик",
            "photoData":{
                "all":[
                    484806696,
                    484806698,
                    484806699,
                    484806697,
                    484806702,
                    484806703,
                    484806704,
                    418273079,
                    418273082,
                    418273083,
                    418273084,
                    418273085,
                    418273091,
                    418273092,
                    484806705,
                    484806717
                ],
                "count":16,
                "seoLinkM":"https://cdn1.riastatic.com/photosnew/auto/photo/gehl_5240__484806696m.jpg",
                "seoLinkSX":"https://cdn1.riastatic.com/photosnew/auto/photo/gehl_5240__484806696sx.jpg",
                "seoLinkB":"https://cdn1.riastatic.com/photosnew/auto/photo/gehl_5240__484806696b.jpg",
                "seoLinkF":"https://cdn1.riastatic.com/photosnew/auto/photo/gehl_5240__484806696f.jpg"
            },
            "linkToView":"/auto_gehl_5240_31213329.html",
            "title":"Gehl 5240 E",
            "stateData":{
                "name":"Киев",
                "regionName":"Киевская",
                "regionNameEng":"kiev",
                "linkToCatalog":"/city/kiev/",
                "title":"Поиск объявлений по городу Киев",
                "stateId":10,
                "cityId":10
            },
            "canSetSpecificPhoneToAdvert":False,
            "dontComment":1,
            "sendComments":0,
            "badges":[
                
            ],
            "VIN":"",
            "vinSvg":"",
            "haveInfotechReport":False,
            "infotechReport":{
                "vin":""
            },
            "moderatedAbroad":False,
            "secureKey":"4c266fc0b6a17375fa3356c49aab64a3",
            "firstTime":False,
            "technicalChecked":False,
            "verifiedByInspectionCenter":False,
            "videoMessageID":"",
            "isLeasing":0,
            "dealer":{
                "link":"",
                "logo":"",
                "type":"",
                "id":0,
                "name":"",
                "packageId":0,
                "typeId":0,
                "isReliable":False,
                "verified":False
            },
            "withInfoBar":False,
            "infoBarText":"",
            "optionStyles":[
                
            ]
        },
        "params_for_save":{
            
        }
        }
        await self.data_checker.check_auto_data(auto_data)

