from ludwig.api import LudwigModel
import logging
import shutil
import os

# reset data preprocessing
try:
    os.remove('./data/*.hdf5')
except:
    pass

try:
    os.remove('./data/*.json')
except:
    pass

# train a model
model_definition = {...}
model = LudwigModel(model_definition, model_definition_file='./model_definition.yaml', logging_level=logging.INFO)
train_stats = model.train(data_train_csv='./data/mnist_dataset_training.csv',
                          data_test_csv='./data/mnist_dataset_testing.csv')

# save trained model
model.save('./saved_model')

model.close()