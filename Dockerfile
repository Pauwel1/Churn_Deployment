# syntax = docker/dockerfile:1

FROM python:3.9

RUN pip install Explainerdashboard

COPY Explainerdashboard.py ./
COPY run_dashboard.py ./

RUN python Explainerdashboard.py

ENTRYPOINT ["python"]
EXPOSE 9050
CMD ["Explainerdashboard.py", "--host = 0.0.0.0"]