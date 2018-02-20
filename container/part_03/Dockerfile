FROM chloroextractorteam/baseimageunicycler

LABEL maintainer="foersterfrank@gmx.de"

WORKDIR /opt

RUN apt update && apt install --yes --no-install-recommends git && rm -rf /var/lib/apt/lists/*
RUN git clone --recursive \
              --branch v1.0.3 \
        https://github.com/chloroExtractorTeam/chloroExtractor.git \
        /opt/chloroExtractor/ && \
    find /opt/chloroExtractor -type d -name ".git" | xargs rm -rf
ENV PATH "/opt/chloroExtractor/bin/:$PATH"

VOLUME /data

WORKDIR /data

ENTRYPOINT ["/opt/chloroExtractor/bin/ptx"]

CMD ["--help"]
