FROM python:3.11.3-slim 

ADD . /app

WORKDIR /app
RUN pip install poetry
RUN poetry install

ENV PYTHONUNBUFFERED=1
ENV PORT=8000

EXPOSE $PORT

CMD ["uvicorn", "main:app", "--port", $PORT]