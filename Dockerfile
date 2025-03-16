FROM python:3.10-slim-buster

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

RUN pip uninstall -y pinecone-plugin-inference

RUN pip install pinecone-client

CMD ["python3", "app.py"]