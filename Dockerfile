#  official Python runtime (not sure if alpine has git
FROM python:3.9-slim

# pwd in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at pwd
COPY . .

# dependencies
RUN pip install --no-cache-dir -r requirements.txt

# run
CMD ["python", "./main.py"]
