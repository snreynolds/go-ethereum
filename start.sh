#!/bin/bash

make geth

echo foo > /tmp/pw.txt

./build/bin/geth \
    --http \
    --http.api web3,eth,debug,personal,net \
    --http.addr 0.0.0.0 \
    --unlock 4791d96e9a999151db645d6685b1c7cfa1c85761 \
    --password /tmp/pw.txt \
    --allow-insecure-unlock \
    --mine \
    --http.corsdomain '*' \
    --http.vhosts '*'

