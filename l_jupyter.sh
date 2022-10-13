#!/bin/bash

sudo docker run \
  --name l_jupyter \
  -ti --rm -d \
  -p 127.0.0.1:55001:8888 \
  -v $PWD/config:/home/jovyan/.jupyter/ \
  -v $PWD/data/:/home/jovyan/work/ \
  jupyter/scipy-notebook:latest

sleep 1

sudo docker logs l_jupyter
