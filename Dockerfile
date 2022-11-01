
FROM phusion/baseimage:master

MAINTAINER aguasonic@gmail.com

# LABEL about the custom image
LABEL maintainer="aguasonic@gmail.com"
LABEL version="1.0"
LABEL description="This is a Docker image set up to \
run the Mist Media Server."

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

#
#- MUST be passed on build
ARG INVOKED_TIMESTAMP

ENV BUILD_DATE $INVOKED_TIMESTAMP
ENV PATH /app/mistserver:$PATH

ARG MISTSERVER=https://r.mistserver.org/dl/mistserver_64V3.1.tar.gz

# Install basics.
RUN apt update
RUN apt install wget2 -yq
RUN mkdir -p /app/mistserver /config /media
ADD service/ /etc/service/
RUN chmod -v +x /etc/service/*/run

# Install mistserver.
RUN wget2 -qO- ${MISTSERVER} | tar xvz -C /app/mistserver

# Clean up.
RUN apt clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME /config /media
EXPOSE 4242 8080 1935 554

