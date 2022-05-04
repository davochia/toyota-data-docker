FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY ca.crt .
COPY toyota_data.csv .
COPY feeder.py .


EXPOSE 1337
CMD ["python", "./feeder.py"]
