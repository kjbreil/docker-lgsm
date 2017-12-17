FROM ubuntu:16.04

LABEL maintainer="Kjell Breiland <kjell.breiland@gmail.com>"

RUN dpkg --add-architecture i386 && apt-get update && apt-get install -y \
  binutils \
  mailutils \
  postfix \
  bc \
  curl \
  wget \
  file \
  bzip2 \
  gzip \
  unzip \
  xz-utils \
  libmariadb2 \
  bsdmainutils \
  python \
  util-linux \
  ca-certificates \
  tmux \
  lib32gcc1 \
  libstdc++6 \
  libstdc++6:i386 \
  libstdc++5:i386 \
  libsdl1.2debian \
  default-jdk \
  lib32tinfo5 \
  speex:i386 \
  libtbb2 \
  libcurl4-gnutls-dev:i386 \
  libtcmalloc-minimal4:i386 \
  libncurses5:i386 \
  zlib1g:i386 \
  libldap-2.4-2:i386 \
  libxrandr2:i386 \
  libglu1-mesa:i386 \
  libxtst6:i386 \
  libusb-1.0-0-dev:i386 \
  libxxf86vm1:i386 \
  libopenal1:i386 \
  libssl1.0.0:i386 \
  libgtk2.0-0:i386 \
  libdbus-glib-1-2:i386 \
  libnm-glib-dev:i386 && \
  rm -rf /var/lib/apt/lists/* && \
  useradd -ms /bin/bash server

USER server

WORKDIR /home/server/

RUN wget -N --no-check-certificate https://gameservermanagers.com/dl/linuxgsm.sh && \
  chmod +x linuxgsm.sh
