# List of ASN.1 Modules

Source: The [International Telecommunications Union](https://www.itu.int)'s [ASN.1 Modules Database](https://www.itu.int/ITU-T/recommendations/fl.aspx?lang=1).

## Steps to Recreate

1. Download the XLSX file on any Unix-like machine.
2. Using the Unix `strings` utility, read any URLs from the file using this command: `strings ITU-T_Report | grep -oh 'http://www.itu.int/ITU-T/[^"]*' > asn1-modules.txt`
3. Run `download-all.sh` to put grab the raw HTML from the ASN.1 modules database.
3. Run `convert-utf8.sh` to generate corresponding UTF-8-encoded HTML files, since the originals are in ISO-8859-1 encoding.
4. Run `extract.sh` to extract the text from the downloaded, UTF-8 encoded HTML and generate the modules.