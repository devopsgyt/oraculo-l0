# Dockerfile

# Pull base image
FROM python:3.8

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code

RUN apt update
RUN apt-get install -y python-dev default-mysql-client

# Install dependencies
RUN pip install pipenv
COPY requirements.txt Makefile /code/
RUN pip install -r requirements.txt
#RUN pip install -r requirements-dev.txt


# Copy project
COPY . /code/
RUN make forum

WORKDIR /code