FROM alpine:3.3
RUN apk update && \
	apk add rsync && \
	mkdir /data

ADD backup /etc/periodic/daily

VOLUME ["/data"]

CMD ["crond", "-f", "-d", "8"]
