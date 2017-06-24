# Ubuntu Base Image for other Dockers
FROM tweyand/ubuntu:16.04
MAINTAINER Tim Weyand <tim.weyand@me.com>

ENV DEBIAN_FRONTEND noninteractive

# Update the System and Install Essential Apps
RUN  \
  apt-get -y update && \
  apt-get -y install unzip git nano software-properties-common  && \
  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886 && \
  add-apt-repository ppa:webupd8team/java && \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
  truncate --size 0 /var/log/*.log && \
  rm -rf /var/lib/apt/lists/*
