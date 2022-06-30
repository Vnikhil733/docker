FROM centos:latest
MAINTAINER nikhil
RUN yum install -y http \
zip \
unzip 
ADD https://
WORKDIR /var/www/html
RUN unzip
RUN cp -rvf 
RUN rm -rf 
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
