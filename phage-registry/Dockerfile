FROM golang:1.7-alpine
MAINTAINER Eric Rasche <esr@tamu.edu>
EXPOSE 8094

RUN apk update && \
	apk add python py-pip wget git make && \
	pip install beautifulsoup4 requests

ENV GIT_REV a063c7065f17968743294a2caa31d8c5279af855
ENV GIT_URL https://github.com/TAMU-CPT/Phage-Registry

RUN wget ${GIT_URL}/archive/${GIT_REV}.tar.gz && \
	tar xvfz ${GIT_REV}.tar.gz && \
	rm ${GIT_REV}.tar.gz && \
	mv Phage-Registry-${GIT_REV}/ /app/
RUN go get -u -v github.com/blevesearch/bleve/...
RUN go get -v github.com/gorilla/mux
RUN cd /app && \
	make download_data && \
	make update_date

WORKDIR /app

CMD ["make", "run"]
