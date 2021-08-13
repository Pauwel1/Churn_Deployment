# syntax = docker/dockerfile:1

FROM python:3.9
WORKDIR /Churn_Deployment

RUN pip install explainerdashboard

COPY explainerFromJoblib.py ./

ENTRYPOINT ["python"]
EXPOSE 9050
CMD ["explainerFromJoblib.py", "--host = 0.0.0.0"]