from ludwig.api import LudwigModel
import logging
import os
import os.path
import pandas as pd
from sklearn.metrics import accuracy_score

# prepare dataframe for predictions
df = pd.read_csv('./data/mnist_dataset_testing.csv')
print(df.head())
df['image_path'] = os.getcwd() +'/data/' + df['image_path']
print(df.head())
print(df.dtypes)

# load a model
model = LudwigModel.load('./saved_model')

# obtain predictions
predictions = model.predict(data_df=df)

print(predictions.dtypes)
print(predictions.head())

# print accuracy metrics
print('prediction accuracy',accuracy_score(df.label, predictions.label_predictions.astype('int')))
model.close()