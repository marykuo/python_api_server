# python_api_server

This is an api server implemented in Flask.

## Features

heartbeat:

```
GET {host}/
```

## GitHub Packages

### Build

Run workflow at https://github.com/marykuo/python_flask_api_server/actions/workflows/build-and-publish-image.yml

### Run Image

```shell
docker run -d -p 8088:8088 ghcr.io/marykuo/python_flask_api_server:main
```

## Local

### Setup and Run App

setup local environment:

```shell
pip install -r requirements.txt
```

run app:

```shell
python app.py
```

### Build and Run Image at Local

run command at root of project:

```shell
docker build -t my-flask-app .
docker run -d -p 8088:8088 python-flask-api-server
```
