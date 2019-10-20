# Tensorflow
FROM continuumio/anaconda3:latest

RUN apt-get -y update && apt-get install -y build-essential git

RUN conda install tensorflow-mkl

RUN pip install ludwig[full]

RUN groupadd -g 1000 ec2-user && \
    useradd -u 1000 -g 1000 ec2-user && \
    mkdir -p /home/ec2-user && \
    chown ec2-user:ec2-user /home/ec2-user

WORKDIR /opt/project
