FROM ubuntu:20.04
LABEL version="0.1"
LABEL maintainer="storm1kk"

RUN apt update && apt upgrade -y && apt install -y \
    s3cmd \
    mariadb-backup \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/bin/bash" ]
