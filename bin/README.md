# Utility Scripts

* **build_images**:  Build docker image with Ludwig and Tensorflow.  Assumes current working directory is project's root directory.
  * `bin/build_images tf_cpu`  Ludwig with Tensorflow (cpu-only)
  * `bin/build_images tf_gpu`  Ludwig with gpu-enabled Tensorflow

* **pull_images.sh**: Pull images from dockerhub.com.  Assumes current working directory is project's root directory.
  * Pull pre-built images from dockerhub: `bin/pull_images.sh`
  * To pull images from another dockerhubm account: `bin/push_images.sh another_dockerhub_account`

* **push_images.sh**:  Pushes images to dockerhub.com.  Assumes current working directory is project's root directory.
  * Push image to dockerhub.com: `bin/push_images.sh` 
  * To push images to another dockerhub account: `bin/push_images.sh another_dockerhub_account`

* **reset_example.sh**:  Removes Ludwig's data preparation, results, visualizations and saved_moodels.  Assumes working directory is the example's sub-directory.
  * Run script: `../bin/reset_example.sh`

* **run_batch_cli**: Run Ludwig container in batch mode.  Container's working directory is set to current working directory when the script is run.  Example execution:
  ``` 
  cd mnist
  ../bin/run_batch_cli \
   ludwig experiment \
    --data_csv ./data/train.csv \
    --model_definition_file model_definition.yaml
  ```

* **run_container**:  Starts a container that provides either a command prompt or start a jupyter notebook.
  * Run command prompt container:
    * cpu-only container: `bin/run_container cpubash`
    * gpu-enabled container: `bin/run_container gpubash`
  * Jupyter notebook container. Open browser to `localhost:8888` to connect to Jupyter Notebook server.
    * cpu-only container: `bin/run_container cpujpynb`
    * gpu-enabled container: `bin/run_container gpujpynb`

