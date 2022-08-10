FROM python:3.10.5-slim

RUN pip install -U pip
RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6 vim -y

WORKDIR /modules
COPY ./requirements.txt ./

RUN pip3 install -r ./requirements.txt