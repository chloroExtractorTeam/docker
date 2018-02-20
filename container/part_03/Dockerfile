FROM chloroextractorteam/baseimageunicycler

LABEL maintainer="foersterfrank@gmx.de"

WORKDIR /opt

RUN apt update && apt install --yes git
RUN git clone --recursive \
              --branch v1.0.3 \
        https://github.com/chloroExtractorTeam/chloroExtractor.git \
        /opt/chloroExtractor/ && \
    rm -rf /opt/chloroExtractor/.git
ENV PATH "/opt/chloroExtractor/bin/:$PATH"

VOLUME /data

WORKDIR /data

ENTRYPOINT ["/opt/chloroExtractor/bin/ptx"]

CMD ["--help"]