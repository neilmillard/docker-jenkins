#!/bin/bash

docker build -t myjenkins jenkins-master/.
docker build -t myjenkinsdata jenkins-data/.
docker build -t myjenkinsnginx jenkins-nginx/.

docker run --name=jenkins-data myjenkinsdata
docker run -p 50000:50000 --name=jenkins-master --volumes-from=jenkins-data -d myjenkins
docker run -p 80:80 --name=jenkins-nginx --link jenkins-master:jenkins-master -d myjenkinsnginx
