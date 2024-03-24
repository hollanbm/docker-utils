FROM debian:stable-slim

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y -qq
RUN apt-get dist-upgrade -y -qq
RUN apt-get autoremove -y -qq

RUN apt-get install curl wget rename -y

RUN useradd -ms /bin/bash user
USER user
WORKDIR /home/user
