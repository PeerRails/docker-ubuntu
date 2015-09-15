FROM ubuntu:vivid-20150813
MAINTAINER peer@omck.ws

RUN echo 'APT::Install-Recommends 0;' >> /etc/apt/apt.conf.d/01norecommends \
 && echo 'APT::Install-Suggests 0;' >> /etc/apt/apt.conf.d/01norecommends \
 && apt-get update \
 && apt-get install -y wget sudo net-tools ca-certificates unzip \
 && rm -rf /var/lib/apt/lists/*
