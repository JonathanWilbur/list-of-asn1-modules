# List of ASN.1 Modules

Source: The [International Telecommunications Union](https://www.itu.int)'s [ASN.1 Modules Database](https://www.itu.int/ITU-T/recommendations/fl.aspx?lang=1).

## Steps to Recreate

1. Download the XLSX file on any Unix-like machine.
2. Using the Unix `strings` utility, read any URLs from the file using this command: `strings ITU-T_Report | grep -oh 'http://www.itu.int/ITU-T/[^"]*' > asn1-modules.txt`
