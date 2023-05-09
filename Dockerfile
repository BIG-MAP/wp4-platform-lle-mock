FROM python:3.11.3-slim AS base

ADD . /app

WORKDIR /app
RUN pip install poetry

FROM base

RUN poetry install

ENV PYTHONUNBUFFERED=1
ENV PORT=8000

EXPOSE $PORT

CMD ["bash", "-c", "poetry run uvicorn main:app --port $PORT --host 0.0.0.0"]