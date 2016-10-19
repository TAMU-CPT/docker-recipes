FROM golang:1.7-alpine
MAINTAINER Eric Rasche <esr@tamu.edu>
EXPOSE 8094

RUN apk update && \
	apk add python py-pip wget git make && \
	pip install beautifulsoup4 requests

ENV GIT_REV 419ae2524d4104f2dd5610c1b63b8dbbfc14c657
ENV GIT_URL https://github.com/TAMU-CPT/Phage-Registry

RUN wget ${GIT_URL}/archive/${GIT_REV}.tar.gz && \
    tar xvfz ${GIT_REV}.tar.gz && \
    mv Phage-Registry-${GIT_REV}/ /app/ && \
    go get -v github.com/blevesearch/bleve/... && \
    go get -v github.com/gorilla/mux && \
    cd /app && make download_data && make update_date

WORKDIR /app

CMD ["make", "run"]
