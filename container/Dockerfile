FROM ubuntu:xenial

LABEL maintainer="foersterfrank@gmx.de"

RUN apt update && apt install --yes \
    liblog-log4perl-perl \
    libmoose-perl \
    libfile-which-perl \
    libipc-run-perl \
    libterm-progressbar-perl \
    libgraph-perl \
    bowtie2 \
    ncbi-blast+ \
    samtools \
    bedtools \
    r-base \
    ghostscript \
    jellyfish

RUN apt install --yes wget python && \
    cd /tmp/ && \
    wget http://cab.spbu.ru/files/release3.10.1/SPAdes-3.10.1-Linux.tar.gz && \
    tar -xzf SPAdes-3.10.1-Linux.tar.gz && \
    mv SPAdes-3.10.1-Linux/ /opt//spades/ && \
    rm SPAdes-3.10.1-Linux.tar.gz

ENV PATH "/opt/spades/bin:$PATH"

WORKDIR /opt
RUN wget -O - https://github.com/chloroExtractorTeam/chloroExtractor/releases/download/v1.0.4/chloroExtractor_v1.0.4.tar.gz | \
    tar xzf - 
ENV PATH "/opt/chloroExtractor_v1.0.4/bin/:$PATH"

VOLUME /data

WORKDIR /data

ENTRYPOINT ["/opt/chloroExtractor_v1.0.4/bin/ptx"]

CMD ["--help"]
