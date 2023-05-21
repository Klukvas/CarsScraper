from src.utils.Env import Env

class BaseApi:
    def __init__(self) -> None:
        self.env = Env
        self.current_api_key = None

    def set_api_key(self, new_api_key: str) -> None:
        self.current_api_key = new_api_key
