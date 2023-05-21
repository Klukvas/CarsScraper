from dotenv import load_dotenv
import os

class Env:
    def __init__(self) -> None:
        load_dotenv()
        self._autoria_config_path: str = os.environ['AUTORIA_CONFIG_PATH']
    

    @property
    def autoria_config_path(self) -> str:
        return self._autoria_config_path