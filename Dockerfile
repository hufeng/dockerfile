FROM ubuntu:20.04

# replace apt source use aliyun
COPY ./sources.list /etc/apt/

ENV DEBIAN_FRONTEND=noninteractive TZ=Asia/Shanghai

RUN apt-get update \
  && apt-get install -y git

