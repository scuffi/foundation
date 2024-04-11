FROM python:3.11-slim-buster

WORKDIR /app

COPY /project /app

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "app.py"]
