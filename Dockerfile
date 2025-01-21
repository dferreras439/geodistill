FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY main.py main.py

# Default. Will be overridden by docker-compose.yml
CMD ["python", "main.py"]
