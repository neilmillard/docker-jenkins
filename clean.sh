#!/bin/bash
# cleans docker images
docker stop jenkins-nginx
docker rm jenkins-nginx
docker stop jenkins-master
docker rm jenkins-master
docker rm jenkins-data