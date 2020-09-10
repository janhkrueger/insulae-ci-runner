FROM ubuntu:20.04
MAINTAINER janhkrueger <janhkrueger@outlook.com>


RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install build-essential git-core wget cppcheck -y  && \
    apt-get install libssl-dev -y && \
    apt-get clean autoclean && \
    apt-get autoremove -y && \
