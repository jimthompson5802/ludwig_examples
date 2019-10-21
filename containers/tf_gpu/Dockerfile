# Tensorflow
FROM tensorflow/tensorflow:1.14.0-gpu-py3
ARG UPDATE_INSTALL=default

RUN apt-get -y update && apt-get install -y git

RUN pip install jupyter matplotlib nbconvert

# perform source install for ludwig to get correct tensorflow-gpu support
RUN git clone --depth=1 https://github.com/uber/ludwig.git \
    && cd ludwig/ \
    && sed -i 's/tensorflow=/tensorflow-gpu=/' requirements.txt \
    && pip install -r requirements.txt -r requirements_text.txt \
          -r requirements_image.txt -r requirements_audio.txt \
          -r requirements_serve.txt -r requirements_viz.txt \
    && python setup.py install

RUN groupadd -g 1000 ec2-user && \
    useradd -u 1000 -g 1000 ec2-user && \
    mkdir -p /home/ec2-user && \
    chown ec2-user:ec2-user /home/ec2-user

WORKDIR /opt/project
