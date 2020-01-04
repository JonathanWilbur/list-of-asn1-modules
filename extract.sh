#!/bin/sh

# Even though this makes me cringe, it turns out that the HTML in which these
# modules were published is simple enough that the lines of sed below suffice
# to extract the text, all while preserving the whitespace formatting!
#
mkdir -p modules
for filename in ./html/*.utf8.html; do
    mod=$(basename $filename | sed 's/\.utf8\.html//g')
    # python2 -m html2text --ignore-links ./html/${mod}.utf8.html > ./modules/${mod}.asn1
    cat ./html/${mod}.utf8.html \
        | sed -e 's/<[^>]*>//g' \
        | sed -e 's/&nbsp;//g' \
        | sed -e 's/&lt;/</g' \
        | sed -e 's/&gt;/>/g' \
        | sed -e 's/&amp;/&/g' \
        | sed -e 's/&quot;/"/g' \
        | sed -e "s/&apos;/'/g" \
        | sed -e 's/&copy;/(C)/g' \
        | sed -e 's/&reg;/(R)/g' > ./modules/${mod}.asn1
    echo "Processed module ${mod}"
done