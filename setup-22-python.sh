#!/bin/bash

set -e

install_eggs=(
  setuptools
)


export TERM=xterm

pip install --upgrade pip
pip list --outdated --format=legacy | cut -d' ' -f1 | xargs pip install --upgrade
pip install "${install_eggs[@]}"
