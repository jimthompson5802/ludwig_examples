# Kaggle Titanic Survivor Prediction

[Ludwig example](https://uber.github.io/ludwig/examples/#kaggles-titanic-predicting-survivors) for predicting probability of surviving. 

## Preparatory Steps
* Create `data` directory
* Download [Kaggle competition dataset](https://www.kaggle.com/c/titanic/data) into the `data` directory.  Directory should
appear as follows:
```
kaggle_titanic/
    data/
        train.csv
        test.csv
```

## Run Example
* Train  model using command line.  
  * Train on cpu-based Docker image: `bash ludwig_cli.sh tf_cpu`
  * Train on gpu-based Docker image: `bash ludwig_cli.sh tf_gpu`
