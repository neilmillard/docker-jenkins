FROM jenkins:1.651.3
MAINTAINER Neil Millard

USER root
RUN mkdir /var/log/jenkins && \
    chown -R jenkins.jenkins /var/log/jenkins && \
    mkdir /var/cache/jenkins && \
    chown -R jenkins.jenkins /var/cache/jenkins
USER jenkins

ENV JAVA_OPTS="-Xmx8192m"
ENV JENKINS_OPTS="--handlerCountStartup=100 --handlerCountMax=300 --logfile=/var/log/jenkins/jenkins.log --webroot=/var/cache/jenkins/war"