FROM ubuntu:20.04
MAINTAINER andreytp<andreytp@gmail.com>
ENV LANG C.UTF-8
RUN  \
  apt-get update \
  && apt-get install -y -q wget \
  && apt-get install -y -q software-properties-common \
  && add-apt-repository universe \
  && cd /tmp \
  && wget --quiet http://apt.ntop.org/20.04/all/apt-ntop.deb \
  && apt-get install -y -q /tmp/apt-ntop.deb \
  && apt-get update \
  && apt-get install --no-install-recommends --no-install-suggests -y -q pfring nprobe ntopng ntopng-data \
  && apt-get clean \
  && rm -rf /tmp/* \
  && rm -rf /var/tmp/* \
  && rm -rf /var/lib/apt/lists/*