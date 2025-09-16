#!/bin/bash
# Script to build and run PySpark Docker container

IMAGE_NAME="custom-spark-py"
DOCKERFILE_PATH="."

# Build the Docker image
echo "Building Docker image..."
docker build -t $IMAGE_NAME $DOCKERFILE_PATH

# Run the container
echo "Starting Docker container..."
docker run -it -p 8888:8888 -p 4040:4040 \
    -v $(pwd):/opt/workdir \
    $IMAGE_NAME \
    /bin/bash
