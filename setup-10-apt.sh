#!/bin/bash

set -e

install_packages=(
  aria2
  autoconf
  autogen
  automake
  bash-completion
  bc
  bison
  bsdtar
  build-essential
  cmake
  curl
  flex
  gcc
  git
  htop
  ipython
  jq
  letsencrypt
  lsb-release
  lua5.2
  make
  mkvtoolnix
  nginx
  nmap
  npm
  pkg-config
  postgresql-client-9.5
  postgresql-client-common
  ppa-purge
  python-libxml2
  python-pip
  ruby
  ruby-bundler
  ruby-dev
  ruby-ffi
  ruby-sqlite3
  libsqlite3-dev
  sqlite3
  tree
  unzip
  w3m
  wbritish
  wget
  zip
  zsync
)


export TERM=xterm
export DEBIAN_FRONTEND=noninteractive

locale-gen en_US.UTF-8

export LANG=en_US.UTF-8
export LANGUAGE=en_US:en
export LC_ALL=en_US.UTF-8

sed -i'' -e 's/archive.ubuntu.com/mirror.pnl.gov/' /etc/apt/sources.list


apt-get update
apt-get install -y apt-utils
apt-get dist-upgrade -y

apt-get update
apt-get install -y "${install_packages[@]}"

apt-get autoremove --purge
apt-get clean
rm -rf /var/lib/apt/lists/*
