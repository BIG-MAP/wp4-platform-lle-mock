# LLE API Mock

This is a mock API for the LLE project.

## Installation

This project uses [Poetry](https://python-poetry.org/docs/#installation) for dependecies management. 

Install Poetry with pip and the current package with the following commands:

```shell
pip install poetry
poetry install
```

## Getting Started

Start the server with HTTP API at port 8000:

```shell
poetry run uvicorn main:app --port 8000
```