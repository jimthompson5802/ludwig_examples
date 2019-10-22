from ludwig.api import LudwigModel
import os
import yaml
import logging


# train a model
model_definition = {}
model = LudwigModel(model_definition, model_definition_file='./model_definition.yaml', logging_level=logging.INFO)
train_stats = model.train(data_train_csv='./data/mnist_dataset_training.csv',
                          data_test_csv='./data/mnist_dataset_testing.csv')

# or load a model
#model = LudwigModel.load(model_path)

# obtain predictions
#predictions = model.predict(test_dataframe)

model.close()