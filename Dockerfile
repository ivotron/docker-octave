FROM ubuntu:disco

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && \
    apt install -y octave && \
    rm -rf /var/lib/apt/lists/* && \
    apt clean

ENTRYPOINT ["octave"]
