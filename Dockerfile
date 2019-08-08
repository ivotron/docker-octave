FROM ubuntu:disco
MAINTAINER ome-devel@lists.openmicroscopy.org.uk

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install less \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean
ADD install.sh install.sh
RUN sh ./install.sh && rm install.sh