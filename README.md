# CarsScraper

Run server```
python main.py rs
```
OR

Preferrer```
uvicorn main:app --reload --port=5001
```

Run scrapper```
python main.py rsc
```


```Run linter
pylint src --output-format=json:linter_errors.json,colorized

```

```
export PYTHONPATH="/Users/andreypavlenko/Desktop/Projects/Python/CarsScraper:$PYTHONPATH"
```

```
export DOCKER_BUILDKIT=0
export COMPOSE_DOCKER_CLI_BUILD=0
```