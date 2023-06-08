from functools import wraps
import yaml
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

def split_array(arr: list, subarray_size: int):
    new_arr = []
    length = len(arr)
    size = int(length // subarray_size)
    remainder = int(length % subarray_size)
    loops_count = size + 1 if remainder > 0 else size
    start = 0
    end = subarray_size
    for num in range(loops_count):
        new_arr.append(arr[start:end])
        start += subarray_size
        end += subarray_size

    return new_arr

def log_function_work(logger:Logger=None, print_func_args=True):
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
            initial_message = f"Calling {func.__name__} function"
            if print_func_args:
                initial_message = f"{initial_message} with next data: {args} {kwargs}"
            logger.info(initial_message)

            # Call the actual function
            result = await func(*args, **kwargs)
            # Log the function completion
            logger.info(f"{func.__name__} function completed.")

            return result

        return wrapper

    return decorator
