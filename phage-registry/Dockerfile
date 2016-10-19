FROM golang:1.7-alpine
MAINTAINER Eric Rasche <esr@tamu.edu>
EXPOSE 8094

RUN apk update && \
	apk add python py-pip wget git make && \
	pip install beautifulsoup4 requests

ENV GIT_REV 4caeadeb397b6d534b2442428f6f7223477965ec
ENV GIT_URL https://github.com/TAMU-CPT/Phage-Registry

RUN wget ${GIT_URL}/archive/${GIT_REV}.tar.gz && \
    tar xvfz ${GIT_REV}.tar.gz && \
    mv Phage-Registry-${GIT_REV}/ /app/ && \
    go get -v github.com/blevesearch/bleve/... && \
    go get -v github.com/gorilla/mux && \
    cd /app && make download_data && make update_date

WORKDIR /app

CMD ["make", "run"]
