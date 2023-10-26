#!/bin/bash

repo=lukasgd/fcn-nvidia-pytorch
#tag=latest
#tag=debug
tag=23.09-py

cd ../

# build
docker build -t ${repo}:${tag} -f docker/Dockerfile .

# push
docker push ${repo}:${tag}

# retag and repush
#docker tag ${repo}:${tag} thorstenkurth/era5-wind:${tag}
#docker push thorstenkurth/era5-wind:${tag}
