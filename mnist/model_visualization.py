#
# Example demonstrating visual api
#
from ludwig.visualize import learning_curves
import json

# read in training statistics
with open('./results_api/api_experiment_run/training_statistics.json') as f:
  training_stats = json.load(f)

# generating learning curves
learning_curves(training_stats, 'label', output_directory='./viz_api', file_format='png')


