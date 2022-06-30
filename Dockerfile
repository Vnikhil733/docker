FROM centos:latest
MAINTAINER nikhil
RUN yum install -y http \
zip \
unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page279/bigwing.zip
WORKDIR /var/www/html
RUN unzip bigwing.zip
RUN cp -rvf bigwing.zip/* .
RUN rm -rf bigwing bigwing.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
