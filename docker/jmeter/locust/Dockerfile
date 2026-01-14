FROM python:3.11-slim

WORKDIR /locust

RUN pip install --no-cache-dir locust

COPY . /locust

CMD ["locust", "-f", "locustfile.py"]
