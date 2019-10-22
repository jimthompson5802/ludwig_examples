# MNIST Example

[ludwig example](https://uber.github.io/ludwig/examples/#image-classification-mnist) of training a CNN for MNIST hand-written data set.


* Prepare training and test data sets.  Run script: `bash create_mnist_dataset.sh`
* Train CNN model using command line.  
  * Train on cpu-based Docker image: `bash ludwig_cli.sh tf_cpu`
  * Train on gpu-based Docker image: `bash ludwig_cli.sh tf_gpu`
* Train CNN model using Python API.  
  * Train on cpu-based Docker image: `bash ludwig_api.sh tf_cpu`
  * Train on gpu-based Docker image: `bash ludwig_api.sh tf_gpu`

## Training time on MacOS (cpu).  Approx 74 secs/epoch
![](../images/ludwig_tf_cpu_timing.png)



## Training time on AWS (p2.xlarge(Nvidia K80 gpu) with AWS Deep Learning Base AMI)  Approx 6 secs/epoch
![](../images/ludwig_tf_gpu_timing.png)