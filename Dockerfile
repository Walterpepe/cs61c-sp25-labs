FROM ubuntu:22.04

WORKDIR /usr/src/app

RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y binutils
RUN apt-get install -y gdb
RUN apt-get install -y gcc-multilib
RUN apt-get install -y valgrind
RUN apt-get install -y python3
RUN apt-get install -y vim
RUN apt-get install -y cgdb