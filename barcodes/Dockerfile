FROM alpine:3.4
MAINTAINER Eric Rasche <esr@tamu.edu>
EXPOSE 80

RUN apk update && \
	apk add ca-certificates wget && \
	update-ca-certificates

ENV GIT_REV=v1.3.3 \
	BARCODE_LISTEN_PREFIX=""

RUN wget https://github.com/erasche/barcode-server/releases/download/${GIT_REV}/barcode-server-linux_amd64 -O /bin/barcode-server && \
	chmod +x /bin/barcode-server

CMD ["/bin/barcode-server", "-l", "0.0.0.0:80"]
