#!/bin/bash
set -e

# openssl genrsa -des3 -out bwdev.dev.key 2048
openssl genrsa -out bwdev-dev/bwdev.dev.key 2048
openssl req -new -key bwdev-dev/bwdev.dev.key \
    -config bwdev-dev/bwdev.dev.cnf \
    -out bwdev-dev/bwdev.dev.csr

openssl rsa -in bwdev-dev/bwdev.dev.key -check
openssl req -in bwdev-dev/bwdev.dev.csr -noout -text
