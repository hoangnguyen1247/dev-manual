#!/bin/bash

cat <<EOF >> /home/$USERNAME/.vimrc
if [ -f ~/dev-manual/.vimrc ]; then
    . ~/dev-manual/.vimrc
fi
EOF