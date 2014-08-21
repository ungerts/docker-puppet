FROM ubuntu:14.04
MAINTAINER Tobias Unger

RUN apt-get update

RUN apt-get install -y curl wget

WORKDIR /tmp

RUN wget https://apt.puppetlabs.com/puppetlabs-release-precise.deb

RUN dpkg -i puppetlabs-release-precise.deb

RUN apt-get update 

RUN apt-get install -y puppetmaster augeas-tools vim

RUN gem install puppet-lint --no-ri --no-rdoc
