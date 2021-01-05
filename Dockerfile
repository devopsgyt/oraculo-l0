# Dockerfile

# Pull base image
FROM python:3.8

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code

# Install dependencies
RUN pip install pipenv
COPY conf/requirements.txt Makefile /code/
RUN pip install -r requirements.txt
#RUN pip install -r requirements-dev.txt


# Copy project
COPY . /code/
RUN make forum

WORKDIR /code