# Tensorflow
FROM tensorflow/tensorflow:latest-py3

RUN apt-get -y update && apt-get install -y git

RUN pip install jupyter matplotlib nbconvert

RUN pip install ludwig[full]

RUN groupadd -g 1000 ec2-user && \
    useradd -u 1000 -g 1000 ec2-user && \
    mkdir -p /home/ec2-user && \
    chown ec2-user:ec2-user /home/ec2-user

WORKDIR /opt/project
