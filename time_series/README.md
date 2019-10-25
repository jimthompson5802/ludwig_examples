# Time Series Forecasting

[Ludwig example](https://uber.github.io/ludwig/examples/#time-series-forecasting-weather-data-example) time series weather forecasting.


## Preparatory Steps
* Retrieve [data](https://www.kaggle.com/selfishgene/historical-hourly-weather-data)
* Create `raw_data` and `data` sub-directories and place the retrieve data in the following directories
``` 
time_series/
    raw_data/
        city_attributes.csv
        humidity.csv
        pressure.csv
        temperature.csv
        weather_description.csv
        wind_direction.csv
        wind_speed.csv
    data/
```
* run `python prepare_data_set.py`.  After running this program data subdirectories should be as follows:
``` 
time_series/
    raw_data/
        city_attributes.csv
        humidity.csv
        pressure.csv
        temperature.csv
        weather_description.csv
        wind_direction.csv
        wind_speed.csv
    data/
        temperature_la.csv
```

## Train models
* Train on cpu-based Docker image: `bash ludwig_cli.sh tf_cpu`
* Train on gpu-based Docker image: `bash ludwig_cli.sh tf_gpu`

