#!/bin/bash

TAG=20.1

cd src

echo -e "\nBuilding images\n"

sudo docker build . -f base.Dockerfile -t jekirl/ai-lab:$TAG-base
echo -e "\nPushing images\n"
docker push jekirl/ai-lab:$TAG-base

#docker build . -f tf.Dockerfile -t jekirl/ai-lab:$TAG-tf
# sudo docker build . -f tf2.Dockerfile -t jekirl/ai-lab:$TAG-tf2
# sudo docker build . -f full.Dockerfile -t jekirl/ai-lab:$TAG
# docker build . -f vnc.Dockerfile -t jekirl/ai-lab:$TAG-vnc



# #docker push jekirl/ai-lab:$TAG-tf
# docker push jekirl/ai-lab:$TAG-tf2
# docker push jekirl/ai-lab:$TAG
# docker push jekirl/ai-lab:$TAG-vnc
