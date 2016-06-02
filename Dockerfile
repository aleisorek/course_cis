FROM centos:latest
MAINTAINER shimib
RUN yum install -y mc
RUN yum install -y java-1.8.0-openjdk-devel.x86_64
RUN yum install -y tomcat
RUN yum install -y which
RUN mkdir /logs
ENV NAME shimi
CMD tomcat start && tail -f /logs/catalina.out
