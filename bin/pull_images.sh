#!/usr/bin/env bash

# pull images from dockerhub

dockerhub_account=${1:-dsimages}

# images to pull
images=(
    ludwig_tf_cpu
    ludwig_tf_gpu
)

# function to push an image to docker hub
pull_image () {

    image_to_pull=${1}
    echo "pulling image: " ${image_to_pull}

    # pull from docker hub
    docker pull ${dockerhub_account}/${image_to_pull}

    # create tag for local use
    docker tag ${dockerhub_account}/${image_to_pull} ${image_to_pull}

}


#
#  pull images
#
for image in ${images[@]}
do
    pull_image ${image}
done