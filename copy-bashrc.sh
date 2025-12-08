#!/bin/bash

cat <<EOF >> /home/$USERNAME/.bashrc
if [ -f ~/dev-manual/.bashrc ]; then
    . ~/dev-manual/.bashrc
fi
EOF
