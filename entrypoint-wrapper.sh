#!/bin/bash
  
# turn on bash's job control
set -m
  
# Start the dockerd daemon and put it in the background
dockerd-entrypoint.sh &

# Wait until the daemon comes up
while ! docker ps
do 
  echo "Waiting for docker daemon..."
  sleep 2
done

# Run this image again inside the container
docker run --privileged aaronnbrock/docker-in-docker-in-docker

