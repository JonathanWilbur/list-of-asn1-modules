#!/bin/sh

for filename in ./html/*.html; do
    mod=$(basename $filename | sed 's/\.html//g')
    python2 -m html2text ./html/${mod}.html > ./modules/${mod}.asn1
    echo "Processed module ${mod}"
done