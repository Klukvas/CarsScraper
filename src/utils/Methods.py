from enum import Enum

class HttpMethods(Enum):
    GET = 'get'
    POST = 'post'
    PUT = 'put'
    DELETE = 'delete'
    PATCH = 'patch'
    HEAD = 'head'
    OPTIONS = 'options'