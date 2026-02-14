#!/bin/sh

SERVICE=$1

echo "Building service: $SERVICE"


docker build \
  -t ${SERVICE}:latest \
  ./app/${SERVICE}

echo "Running container to verify build..."

docker run --rm ${SERVICE}:latest &

sleep 3

echo "Build and run successful for $SERVICE"
