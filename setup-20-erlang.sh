#!/bin/bash

set -e

export TERM=xterm
export DEBIAN_FRONTEND=noninteractive

echo "deb http://binaries.erlang-solutions.com/debian `lsb_release -cs` contrib" | tee /etc/apt/sources.list.d/erlang-esl.list
wget -O - http://binaries.erlang-solutions.com/debian/erlang_solutions.asc | apt-key add -
apt-get update
apt-get install -y esl-erlang
apt-get install -y erlang-base-hipe
apt-get install -y erlang-manpages erlang-doc elixir

apt-get autoremove --purge -y
apt-get clean
rm -rf /var/lib/apt/lists/*

