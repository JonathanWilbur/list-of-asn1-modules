#!/bin/sh

for filename in ./html/*.html; do
    mod=$(basename $filename | sed 's/\.html//g')
    # python2 -m html2text ./html/${mod}.html > ./modules/${mod}.asn1
    iconv -f ISO-8859-1 -t UTF-8 $filename > html/${mod}.utf8.html
    echo "Converted HTML for module ${mod} to UTF-8."
done
