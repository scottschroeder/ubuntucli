FROM ubuntu:xenial

RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y \
    git \
    tree \
    cmake \
    curl \
    dnsutils \
    iputils-ping \
    jq \
    make \
    netcat \
    openssl \
    python-dev \
    python3-dev \
    python3-pip \
    unzip \
    vim \
    wget \
	&& \
  pip3 install -U pip==9.0.3 setuptools && \
  pip3 install jinja2 pyyaml

CMD /bin/bash
