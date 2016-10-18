FROM alpine:1.7
MAINTAINER Eric Rasche <esr@tamu.edu>
EXPOSE 80

ENV GIT_REV v1.0-2-g1eeacc5

RUN apk update && \
	apk add git ca-certificates wget && \
	update-ca-certificates

RUN wget https://github.com/erasche/barcode-server/releases/download/${GIT_REV}/barcode-server-linux_amd64 -O /bin/barcode-server

CMD ["/bin/barcode-server", "-l", "0.0.0.0:80"]
