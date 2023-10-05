FROM ubuntu:focal AS base
WORKDIR /usr/local/bin
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y curl git && \
    apt-get update && \
    apt-get clean autoclean && \
    apt-get autoremove --yes

FROM base
RUN addgroup --gid 1000 farhanoktvn
RUN adduser --gecos farhanoktvn --uid 1000 --gid 1000 --disabled-password farhanoktvn
USER farhanoktvn
WORKDIR /home/farhanoktvn
