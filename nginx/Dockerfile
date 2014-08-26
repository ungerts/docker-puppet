FROM ubuntu:14.04
MAINTAINER Tobias Unger

RUN apt-get update

RUN apt-get install -y curl wget

WORKDIR /tmp

RUN wget https://apt.puppetlabs.com/puppetlabs-release-precise.deb

RUN dpkg -i puppetlabs-release-precise.deb

RUN apt-get update 

RUN apt-get install -y puppet augeas-tools vim

ADD ./puppet/puppetconf/puppet.conf /etc/puppet/puppet.conf

ADD ./scripts /scripts

RUN chmod 755 /scripts/*

#ENTRYPOINT ["puppet", "agent", "--no-daemonize", "--server", "puppet", "--logdest", "console", "--verbose"]

ENTRYPOINT ["/scripts/run.sh"]
