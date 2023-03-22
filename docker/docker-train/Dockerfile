FROM python:3.9

COPY . /opt/app
WORKDIR /opt/app

#COPY requirements.txt ./
RUN apt-get update && apt-get install -y python3-pip


RUN pip install --trusted-host pypi.python.org -r requirements.txt 
