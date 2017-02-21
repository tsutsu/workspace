#!/bin/bash

set -e

export TERM=xterm

useradd -M -N -g "$(grep -e "^staff:" /etc/group | cut -d':' -f 3)" -s /bin/bash tsutsu
mv /tmp/skel /home/tsutsu
chown -R tsutsu:staff /home/tsutsu
