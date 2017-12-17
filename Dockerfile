FROM ubuntu:16.04

LABEL maintainer="Kjell Breiland <kjell.breiland@gmail.com>"

RUN dpkg --add-architecture i386 
RUN apt-get update 
RUN apt-get install -y \
  mailutils \
  postfix \
  curl \
  wget \
  file \
  bzip2 \
  gzip \
  unzip \
  bsdmainutils \
  python \
  util-linux \
  ca-certificates \
  binutils \
  bc \
  tmux \
  lib32gcc1 \
  libstdc++6 \
  libstdc++6:i386 \
  lib32z1 && \
  rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash server

USER server

WORKDIR /home/server/

RUN wget -N --no-check-certificate https://gameservermanagers.com/dl/linuxgsm.sh && \
  chmod +x linuxgsm.sh

ENTRYPOINT [ "./linuxgsm.sh" ]
CMD [ "install" ]

