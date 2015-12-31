FROM ubuntu:15.10

USER root

WORKDIR /opt

RUN apt-get update
RUN apt-get install -y openjdk-8-jdk
RUN apt-get install -y wget
RUN apt-get install -y vim
RUN wget http://apache.fayea.com/tomee/tomee-1.7.3/apache-tomee-1.7.3-webprofile.tar.gz
RUN tar -xvf apache-tomee-1.7.3-webprofile.tar.gz
RUN mv apache-tomee-webprofile-1.7.3 tomee

EXPOSE 8080

RUN mkdir data
RUN mkdir bakdata

ENV STOCK_BAK_DATA /opt/bakdata
ENV STOCK_DATA /opt/data

CMD ["/bin/bash"]