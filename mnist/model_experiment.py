from ludwig.api import LudwigModel
import logging
import glob
import os

# reset data preprocessing
files = glob.glob('./data/*.hdf5')
for f in files:
    try:
        os.remove(f)
    except:
        pass

files = glob.glob('./data/*.json')
for f in files:
    try:
        os.remove(f)
    except:
        pass


# train a model
model_definition = {...}
model = LudwigModel(model_definition, model_definition_file='./model_definition.yaml', logging_level=logging.INFO)
train_stats = model.train(data_csv='./data/mnist_dataset_training.csv',
                          output_directory='./results_api')

# save trained model
model.save('./saved_model')

model.close()