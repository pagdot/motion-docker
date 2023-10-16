FROM lscr.io/linuxserver/baseimage-ubuntu:jammy

RUN \
  echo "**** install motion ****" && \
  apt update && \
  apt install -y \
    motion && \
  echo "**** cleanup ****" && \
  apt-get autoclean && \
  rm -rf \
    /var/lib/apt/lists/* \
    /var/tmp/* \
    /tmp/*

COPY root /

WORKDIR /config

EXPOSE 8081
