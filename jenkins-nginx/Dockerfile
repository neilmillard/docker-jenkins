FROM centos:centos7
MAINTAINER Neil Millard

RUN yum -y update; yum clean all && \
    yum -y install http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm; yum -y makecache && \
    yum -y install nginx-1.8.0 && \
    rm /etc/nginx/conf.d/default.conf && \
    rm /etc/nginx/conf.d/example_ssl.conf

COPY conf/jenkins.conf /etc/nginx/conf.d/jenkins.conf
COPY conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
CMD ["nginx"]