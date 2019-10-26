# MNIST Example

[ludwig example](https://uber.github.io/ludwig/examples/#image-classification-mnist) of training a CNN for MNIST hand-written data set.

* Set current working directory the `mnist` directory
* Prepare training and test data sets.  Run script: `bash create_mnist_dataset.sh`
* Train CNN model using command line.  
  * Train on cpu-based Docker image: `bash ludwig_cli.sh tf_cpu`
  * Train on gpu-based Docker image: `bash ludwig_cli.sh tf_gpu`
* Train CNN model using Python API and save trained model.  
  * Train on cpu-based Docker image: `bash ludwig_training.sh tf_cpu`
  * Train on gpu-based Docker image: `bash ludwig_training.sh tf_gpu`
* Run Python program to load saved model and run predictions on `mnist` test data set.
  * Make predictions using cpu-based Docker image: `bash ludwig_predictions.sh tf_cpu`
  * Make predictions using gpu-based Docker image: `bash ludwig_predictions.sh tf_gpu`

## Training time on MacOS (cpu).  Approx 74 secs/epoch
![](../images/ludwig_tf_cpu_timing.png =800X900)

## Training time on AWS (p2.xlarge(Nvidia K80 gpu) with AWS Deep Learning Base AMI)  Approx 6 secs/epoch
![](../images/ludwig_tf_gpu_timing.png)


## Reset Example
If it is desired to remove old data pre-processing and results, run this command:
``` 
cd mnist
../bin/reset_example.sh
```