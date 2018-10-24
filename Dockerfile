FROM ubuntu:xenial

RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y \
    iputils-ping \
    netcat \
    dnsutils \
    wget \
    openssl \
    curl \
    unzip \
    vim \
    python3-pip && \
  pip3 install -U pip==9.0.3 setuptools && \
  pip3 install jinja2 pyyaml

CMD /bin/bash
