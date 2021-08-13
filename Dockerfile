# syntax = docker/dockerfile:1

FROM python:3.9
WORKDIR /Churn_Deployment

RUN pip install explainerdashboard

COPY . .

ENTRYPOINT ["python"]
CMD ["run_dashboard.py", "--host = 0.0.0.0"]