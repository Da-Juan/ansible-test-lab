FROM debian:9

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install --no-install-recommends --no-install-suggests -y \
        iputils-ping less net-tools openssh-server python vim \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /var/run/sshd
RUN mkdir /root/.ssh
