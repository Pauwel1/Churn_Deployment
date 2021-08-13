# syntax = docker/dockerfile:1

FROM python:3.9

RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
RUN pip install explainerdashboard
RUN pip install imblearn

RUN mkdir app
WORKDIR "/app/"

COPY . .

RUN python Explainerdashboard.py

EXPOSE 9050
CMD explainerdashboard run explainer.joblib --port 9050