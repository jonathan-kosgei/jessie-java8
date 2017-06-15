FROM debian:jessie

MAINTAINER Jonathan Kosgei

RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" >> /etc/apt/sources.list.d/java-8-debian.list &&\
    echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" >> /etc/apt/sources.list.d/java-8-debian.list &&\
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886 &&\
    apt-get update &&\
    echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections &&\
    apt-get install oracle-java8-installer -y

