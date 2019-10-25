import pandas as pd
from ludwig.utils.data_utils import add_sequence_feature_column

df = pd.read_csv(
    './raw_data/temperature.csv',
    usecols=['Los Angeles']
).rename(
    columns={"Los Angeles": "temperature"}
).fillna(method='backfill').fillna(method='ffill')

# normalize
df.temperature = ((df.temperature-df.temperature.mean()) /
                  df.temperature.std())

train_size = int(0.6 * len(df))
vali_size = int(0.2 * len(df))

# train, validation, test split
df['split'] = 0
df.loc[
    (
        (df.index.values >= train_size) &
        (df.index.values < train_size + vali_size)
    ),
    ('split')
] = 1
df.loc[
    df.index.values >= train_size + vali_size,
    ('split')
] = 2

# prepare timeseries input feature colum
# (here we are using 20 preceeding values to predict the target)
add_sequence_feature_column(df, 'temperature', 20)
df.to_csv('./data/temperature_la.csv')