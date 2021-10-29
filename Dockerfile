FROM ubuntu:hirsute
LABEL maintainer="janhkrueger@outlook.com"

RUN TZ=UTC  && \
    export DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt install -y tzdata

RUN apt-get -y --no-install-recommends -qq install build-essential wget ca-certificates gnupg2 cmake make autoconf automake gdb libpq-dev libpqxx-dev postgresql-server-dev-all curl libcurl4-openssl-dev libcurl4 software-properties-common libssl-dev g++-multilib gnu-standards gdbserver git clang llvm libspdlog-dev && \
    apt-get clean autoclean && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* && \
    git clone https://gitlab.com/insulae_dev/external-components/rapidjson/ && \
    cd rapidjson/ && \
    mkdir build && \
    cd build/ && \
    cmake -DRAPIDJSON_BUILD_EXAMPLES=OFF -DRAPIDJSON_BUILD_DOC=OFF -DRAPIDJSON_BUILD_TESTS=OFF -DRAPIDJSON_BUILD_ASAN=ON -DRAPIDJSON_BUILD_UBSAN=ON .. && \
    make && \
    make install && \
    make clean && \
    git clone https://gitlab.com/insulae_dev/external-components/curlpp && \
    cd curlpp/ && \
    mkdir build && \
    cd build/ && \
    cmake .. && \
    make && \
    make install && \
    make clean && \
    git clone https://gitlab.com/insulae_dev/external-components/libvault && \
    cd libvault/ && \
    mkdir build && \
    cd build/ && \
    cmake -DENABLE_TEST=OFF -DLINK_CURL=ON .. && \
    make && \
    make install && \
    make clean    
