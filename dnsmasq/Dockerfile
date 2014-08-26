FROM ubuntu:14.04
MAINTAINER Tobias Unger

RUN apt-get update

RUN apt-get install -y curl wget unzip vim supervisor

WORKDIR /tmp

RUN wget https://dl.bintray.com/mitchellh/serf/0.6.3_linux_amd64.zip

RUN unzip 0.6.3_linux_amd64.zip

RUN mv serf /usr/local/bin

RUN chmod 755 /usr/local/bin/serf

ADD ./scripts /scripts

RUN chmod 755 /scripts/*

ADD ./supervisor /etc/supervisor

#ENTRYPOINT ["serf", "agent", "-tag", "role=web"]
