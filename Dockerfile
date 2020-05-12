FROM python:3.7
ENV PYTHONUNBUFFERED 1

RUN apt-get -y update && apt-get -y install postgresql-client

# Allows docker to cache installed dependencies between builds
COPY ./requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Adds application code to the image
RUN mkdir -p /var/app/flap
WORKDIR /var/app/flap
COPY . .

EXPOSE 8000