FROM centos:7

MAINTAINER darc_wing@hotmail.com

RUN yum -y update

RUN yum install tomcat -y

COPY tomcat.conf /usr/share/tomcat/conf/tomcat.conf

ADD 'https://s3.amazonaws.com/webgoat-war/webgoat-container-7.1-SNAPSHOT.war' /usr/share/tomcat/webapps/WebGoat.war

RUN systemctl start tomcat

EXPOSE 8080