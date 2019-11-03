# Construction Notes for Docker Images

## Images
|Image|Description|
|-----|-----------|
|tf_cpu|Ludwig with cpu-only Tensorflow|
|tf_gpu|Ludwig with gpu-enabled Tensorflow|
|tf_mkl|Ludwig with cpu-only Tensorflow with Intel's Math Kernel Library (mkl) (Deprecated)| 

To build images:
* set current working directory to project's root
* Run following: 
  * `bin/build_images tf_cpu`
  * `bin/build_images tf_gpu`

## ludwig_tf_gpu image:  

[Base image `tensorflow/tensorflow:1.14.0-gpu-py3`](https://www.tensorflow.org/install/docker) to match the tensorflow version required by ludwig.

Using guidance from this [issue](https://github.com/uber/ludwig/issues/504) replaced the pip install for ludwig with source install for ludwig.  In `Dockerfile` replaced this instruction
```
RUN pip install ludwig[full]
```
with this set of instructions (Note usage of `sed` command to specify tensorflow-gpu dependency)
```
RUN git clone --depth=1 https://github.com/uber/ludwig.git \
    && cd ludwig/ \
    && sed -i 's/tensorflow=/tensorflow-gpu=/' requirements.txt \
    && pip install -r requirements.txt -r requirements_text.txt \
          -r requirements_image.txt -r requirements_audio.txt \
          -r requirements_serve.txt -r requirements_viz.txt \
    && python setup.py install
```

Used [AWS Deep Learning Base AMI](https://aws.amazon.com/marketplace/pp/B077GFM7L7) to run the `ludwig_tf_gpu` image.

References:
* https://github.com/NVIDIA/nvidia-docker 
* https://github.com/NVIDIA/nvidia-container-runtime