FROM ubuntu:20.04
MAINTAINER janhkrueger <janhkrueger@outlook.com>

RUN TZ=UTC
RUN export DEBIAN_FRONTEND=noninteractive
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get dist-upgrade -y

RUN DEBIAN_FRONTEND=noninteractive apt install -y tzdata

RUN apt-get -y --no-install-recommends install build-essential wget ca-certificates gnupg2 cmake make autoconf automake gdb libpq-dev libpqxx-dev postgresql-server-dev-all curl libcurl4-openssl-dev libcurl4 software-properties-common libssl-dev g++-multilib gnu-standards gdbserver && \
    apt-get clean autoclean && \
    apt-get autoremove -y



11a38618-4c4f-49f2-867a-4310533a5feb