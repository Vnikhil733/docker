FROM centos

MAINTAINER Sushant Kiran

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O http://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.27/bin/apache-tomcat-9.0.27.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-9.0.27/* /opt/tomcat/.
RUN yum -y install java
RUN java -version
RUN yum -y install git
RUN git clone https://github.com/Sushant227/Docker.git
RUN pwd && ls
RUN cd /opt/tomcat/Docker/ && ls
RUN cp -f /opt/tomcat/Docker/server.xml /opt/tomcat/conf/.
RUN cp -f /opt/tomcat/Docker/tomcat-users.xml /opt/tomcat/conf/.
RUN cp -f /opt/tomcat/Docker/context.xml /opt/tomcat/webapps/manager/META-INF/.
EXPOSE 8888

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
