FROM ubuntu:xenial

LABEL maintainer="foersterfrank@gmx.de"

RUN apt update && apt install --yes \
    liblog-log4perl-perl \
    libmoose-perl \
    libfile-which-perl \
    libterm-progressbar-perl \
    jellyfish

RUN apt install --yes wget python && \
    cd /tmp/ && \
    wget http://cab.spbu.ru/files/release3.10.1/SPAdes-3.10.1-Linux.tar.gz && \
    tar -xzf SPAdes-3.10.1-Linux.tar.gz && \
    mv SPAdes-3.10.1-Linux/ /spades/
ENV PATH "$PATH:/spades/bin"

VOLUME /data