import yaml
from functools import wraps
from logging import Logger
from .Env import Env

def config_read(path_to_config: str):
    with open(path_to_config, "r") as stream:
        try:
            return yaml.safe_load(stream)
        except yaml.YAMLError as exc:
            raise exc

def build_bd_url(env: Env) -> str:
    return 'postgresql+asyncpg://{username}:{password}@{host}:{port}/{db_name}'.format(
            username=env.pg_user,
            password=env.pg_password,
            host=env.pg_host,
            port=env.pg_port,
            db_name=env.pg_auto_db_name
        )

def log_function_work(logger:Logger=None):
    def decorator(func):
        @wraps(func)
        async def wrapper(*args, **kwargs):
            nonlocal logger
            if not logger:
                # Get the logger from the class instance
                try:
                    logger = args[0].logger 
                except:
                    raise ValueError("The logger is not found.")
            # Log the function call with decorator arguments
            logger.info(f"Calling {func.__name__} function with next data: {args} {kwargs}")

            # Call the actual function
            result = await func(*args, **kwargs)
            # Log the function completion
            logger.info(f"{func.__name__} function completed.")

            return result

        return wrapper

    return decorator
