
FROM python:3.6
LABEL Name=app Version=0.0.1 

LABEL maintainer "Timothy Ko <tk2@illinois.edu>"

RUN apt-get update && apt-get install -f -y postgresql-client
RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app
RUN pip install --no-cache-dir -r requirements.txt
ENV FLASK_ENV="docker"
COPY . /app
EXPOSE 5000