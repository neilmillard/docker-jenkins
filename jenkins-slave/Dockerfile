FROM centos:7
MAINTAINER Neil Millard
# A jenkins docker slave
# Requires authorized_keys file from `ssh-keygen -t rsa -b 4096` `mv id_rsa.pub authorized_keys`

# Install updates
RUN yum update -y && \
    yum clean all

# Install Packages
RUN yum install -y git wget openssh-server java-1.8.0.openjdk sudo && \
    yum clean all

# Auto gen certs for SSHD
RUN /usr/bin/ssh-keygen -A

# SSH setup
RUN sed -ri 's/^session\s+required\s+pam_loginuid.so$/session optional pam_loginuid.so/' /etc/pam.d/sshd

# a Jenkins user please
RUN useradd jenkins -m -s /bin/bash

# Public keys for jenkins login
RUN mkdir /home/jenkins/.ssh
COPY /files/authorized_keys /home/jenkins/.ssh/authorized_keys
RUN chown -R jenkins /home/jenkins
RUN chgrp -R jenkins /home/jenkins
RUN chmod 600 /home/jenkins/.ssh/authorized_keys
RUN chmod 700 /home/jenkins/.ssh

# Add the jenkins user to sudoers
RUN echo "jenkins  ALL=(ALL)  ALL" >> etc/sudoers

# Set Google Name Servers if slave having DNS issues
#COPY /files/resolv.conf /etc/resolv.conf

# Expose SSH port and run SSHD
EXPOSE 22
CMD ["/usr/sbin/sshd","-D"]