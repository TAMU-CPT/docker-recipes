FROM alpine:3.4
MAINTAINER Eric Rasche <esr@tamu.edu>
EXPOSE 80

RUN apk update && \
	apk add ca-certificates wget python tar bash && \
	update-ca-certificates

ENV GIT_REV=master \
	OBO_URLS="http://geneontology.org/ontology/go.obo"

RUN mkdir /go && \
	wget https://github.com/elenimijalis/go_parse/archive/0bfcd59897718ca9c3f28d7e21b2074883c224de.tar.gz -O api.tar.gz && \
	tar -xf api.tar.gz -C /go --strip-components=1 && \
	rm api.tar.gz

ADD ./entrypoint.sh /entrypoint.sh

WORKDIR /output/
	
CMD ["/entrypoint.sh"]
