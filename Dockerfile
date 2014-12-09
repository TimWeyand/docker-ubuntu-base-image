# Ubuntu Base Image for other Dockers
FROM ubuntu
MAINTAINER Tim Weyand <tim.weyand@me.com>

ENV DEBIAN_FRONTEND noninteractive

# Update the System and Install Essential Apps
RUN  \
  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886 && \
  add-apt-repository ppa:webupd8team/java && \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections && \
  apt-get -y install unzip git wget nano

ONBUILD RUN \
  apt-get -y update && \
  apt-get -y upgrade
