FROM ubuntu:disco

MAINTAINER ome-devel@lists.openmicroscopy.org.uk

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install less octave \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

ENTRYPOINT ["octave"]
