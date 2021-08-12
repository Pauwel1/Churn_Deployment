# syntax = docker/dockerfile:1

FROM python:3.9
WORKDIR /Churn_Deployment

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

RUN python Explainerdashboard.py

ENTRYPOINT ["python"]
EXPOSE 9050
CMD ["run_dashboard.py", "--host = 0.0.0.0"]