#!/bin/bash

cat <<EOF >> ~/.vimrc
" Define the path to the optional configuration file
let s:test_config = expand('~/dev-manual/.vimrc')

" Check if the file exists and is readable
if filereadable(s:test_config)
    " If it exists, execute its contents (source it)
    source ~/dev-manual/.vimrc
endif
EOF