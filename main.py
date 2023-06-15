import asyncio
from src.autoRia.syncParameters import SynchronizerController
from src.rst.scrapper import Scrapper as rstScrapepr
from src.utils.DependencyManager import DependencyManager
from src.backend.api import app
import sys

async def scrapper():
    dpm = DependencyManager()
    scrapper = dpm.scrapper
    db_client = dpm.db_client
    env = dpm.env

    await db_client.create_database_if_not_exist(
            user=env.pg_user,
            database=env.pg_auto_db_name,
            password=env.pg_password
        )
    await db_client.init_models_and_views()

    await scrapper.start_parse()

async def sync_data(sync_variant: str='all'):
    controller = SynchronizerController()
    await controller.start()

def rst_scrapper():
    rstScrapepr().start()

def main():
    if len(sys.argv) < 2:
        print("Please provide a command.")
        return
    command = sys.argv[1]
    if command == "runserver" or command == "rs":
        import uvicorn
        uvicorn.run(app, host="0.0.0.0", port=5001, log_level="info")
    elif command == "ria_scrapper" or command == "rsc":
        loop = asyncio.get_event_loop()
        loop.run_until_complete(scrapper())
    else:
        print("Unknown command.")




if __name__ == '__main__':
    main()
    

    

