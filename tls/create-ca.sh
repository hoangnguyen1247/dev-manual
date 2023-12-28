#!/bin/bash
set -e

openssl genrsa -des3 -out ca/BwCA.key 4096
openssl req -x509 -new -nodes -key ca/BwCA.key \
    -config ca/BwCA.cnf \
    -out ca/BwCA.crt -days 3650 -batch
