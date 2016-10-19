#!/bin/bash
for url in $OBO_URLS; do
	wget $url -O /file.obo && \
		python /go/go_parse.py /file.obo
done

echo "Processing complete, files available in /output. Please share these via a static file serving container"
