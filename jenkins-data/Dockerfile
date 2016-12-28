FROM centos:centos7
MAINTAINER Neil Millard

RUN useradd -d "/var/jenkins_home" -u 1000 -m -s /bin/bash jenkins && \
    mkdir -p /var/log/jenkins && \
    chown -R jenkins.jenkins /var/log/jenkins
    
VOLUME ["/var/log/jenkins", "/var/jenkins_home"]
USER jenkins
CMD ["echo", "Data container for Jenkins"]