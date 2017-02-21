#!/bin/bash

set -e

install_gems=(
  fpm
  mimemagic
  mime-types
  mime-types-data
  paint
  pry
  pry-doc
)


export TERM=xterm

gem update -N
gem install -N "${install_gems[@]}"
gem cleanup
