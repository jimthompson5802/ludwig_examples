# Text Classification

[Ludwig example](https://uber.github.io/ludwig/examples/#text-classification) for text classification model.

## Preparatory Steps
* Create `data` directory
* Download [training data](http://boston.lti.cs.cmu.edu/classes/95-865-K/HW/HW2/reuters-allcats-6.zip)
* Extract `reuters-allcats.csv` file and place in `data` sub-directory.  Training data location should be
```
text_classification/
    data/
        reuters-allcats.csv
```

## Run Example
* Train  model using command line.  
  * Train on cpu-based Docker image: `bash ludwig_cli.sh tf_cpu`
  * Train on gpu-based Docker image: `bash ludwig_cli.sh tf_gpu`