FROM golang:1.7-alpine
MAINTAINER Eric Rasche <esr@tamu.edu>
EXPOSE 80

ENV GIT_REV 93018954e78f7afc2157de9c4df7cc24afc1f333

RUN apk update && \
	apk add git ca-certificates wget && \
	update-ca-certificates

RUN wget https://github.com/erasche/barcode-server/archive/${GIT_REV}.tar.gz && \
    tar xvfz ${GIT_REV}.tar.gz && \
    mv barcode-server-${GIT_REV}/ /app/ && \
    go get -v github.com/codegangsta/cli && \
    go get -v github.com/boombuler/barcode && \
    go get -v github.com/gorilla/mux && \
    go get -v github.com/gorilla/handlers

CMD ["go", "run", "/app/main.go", "-l", "0.0.0.0:80"]
