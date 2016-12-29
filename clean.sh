#!/bin/bash
# cleans docker images
docker stop jenkins_nginx_1
docker rm jenkins_nginx_1
docker stop jenkins_master_1
docker rm jenkins_master_1
docker rm jenkins_data_1

docker rmi $(docker images -q -f "dangling=true")