# syntax = docker/dockerfile:1

FROM python:3.9
WORKDIR /Churn_Deployment

RUN pip install explainerdashboard

COPY explainer.joblib ./

RUN explainerdashboard explainer.joblib

ENTRYPOINT ["python"]
EXPOSE 9050
CMD ["explainer.joblib", "--host = 0.0.0.0"]