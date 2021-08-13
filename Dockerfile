# syntax = docker/dockerfile:1

FROM python:3.9
WORKDIR /Churn_Deployment

RUN pip install explainerdashboard

COPY . .

CMD explainerdashboard run explainer.joblib --port 9050