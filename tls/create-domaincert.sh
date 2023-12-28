#!/bin/bash
set -e

# openssl x509 -req -in bwdev-dev/bwdev.dev.csr -CA ca/BwCA.crt -CAkey ca/BwCA.key -CAcreateserial -sha256 \
#     -days 1000 \
#     -out bwdev-dev/bwdev.dev.crt

openssl x509 -req -in bwdev-dev/bwdev.dev.csr -CA ca/BwCA.crt -CAkey ca/BwCA.key -CAcreateserial -sha256 \
    -days 1000 \
    -out bwdev-dev/bwdev.dev.crt \
    -extensions req_ext -extfile bwdev-dev/bwdev.dev.cnf

# openssl x509 -in bwdev-dev/bwdev.dev.crt -noout -text
openssl x509 -in bwdev-dev/bwdev.dev.crt -noout -text | grep -A 1 "Subject Alternative Name" 
