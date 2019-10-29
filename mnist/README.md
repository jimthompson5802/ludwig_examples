# MNIST Example

[ludwig example](https://uber.github.io/ludwig/examples/#image-classification-mnist) of training a CNN for MNIST hand-written data set.

* Set current working directory the `mnist` directory
* Prepare training and test data sets.  Run script: `bash create_mnist_dataset.sh`
* Train CNN model using command line.  
  * Train on cpu-based Docker container: `bash ludwig_cli.sh tf_cpu`
  * Train on gpu-based Docker container: `bash ludwig_cli.sh tf_gpu`
* Train CNN model using Python API and save trained model.  
  * Train on cpu-based Docker container: `bash ludwig_api_training.sh tf_cpu`
  * Train on gpu-based Docker container: `bash ludwig_api_training.sh tf_gpu`
* Run Python program to load saved model and run predictions on `mnist` test data set.
  * Make predictions using cpu-based Docker container: `bash ludwig_api_predictions.sh tf_cpu`
  * Make predictions using gpu-based Docker container: `bash ludwig_api_predictions.sh tf_gpu`

## Training time on MacOS (cpu).  Approx 74 secs/epoch
<img src="https://github.com/jimthompson5802/ludwig_examples/blob/master/images/ludwig_tf_cpu_timing.png" width="400" 
  height="500">

## Training time on AWS (p2.xlarge(Nvidia K80 gpu) with AWS Deep Learning Base AMI)  Approx 6 secs/epoch
![](../images/ludwig_tf_gpu_timing.png)

## Sample Visualizations
### Learning Curves
![](./viz_api/learning_curves_combined_loss.png)

## Reset Example
If it is desired to remove old data pre-processing and results, run this command:
``` 
cd mnist
../bin/reset_example.sh
```