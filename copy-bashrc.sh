#!/bin/bash

cat <<EOF >> ~/.bashrc
if [ -f /app/dev-infra/dev-manual/.bashrc ]; then
    . /app/dev-infra/dev-manual/.bashrc
fi
EOF