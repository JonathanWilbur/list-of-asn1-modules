#!/bin/sh

while read line; do
  echo "$line"
  file_base_name=$(echo "$line" | sed 's/http:\/\/www.itu.int\/ITU-T\/formal-language\///g' | sed 's/\.html//g' | tr '/' '_')
  curl -sL $line > html/${file_base_name}.html
  sleep 5 # Just so we don't DoS the poor ol' ITU.
done < asn1-modules.txt