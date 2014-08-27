FROM ubuntu:14.04
MAINTAINER Tobias Unger

RUN apt-get update

RUN apt-get install -y curl wget

WORKDIR /tmp

RUN wget https://apt.puppetlabs.com/puppetlabs-release-precise.deb

RUN dpkg -i puppetlabs-release-precise.deb

RUN apt-get update 

RUN apt-get install -y puppet augeas-tools vim supervisor unzip

ADD ./puppet/puppetconf/puppet.conf /etc/puppet/puppet.conf

WORKDIR /tmp

RUN wget https://dl.bintray.com/mitchellh/serf/0.6.3_linux_amd64.zip

RUN unzip 0.6.3_linux_amd64.zip

RUN mv serf /usr/local/bin

RUN chmod 755 /usr/local/bin/serf

ADD ./scripts /scripts

RUN chmod 755 /scripts/*

ADD ./supervisor /etc/supervisor

EXPOSE 80

#ENTRYPOINT ["puppet", "agent", "--no-daemonize", "--server", "puppet", "--logdest", "console", "--verbose"]

ENTRYPOINT ["/scripts/run.sh"]
