FROM nginx

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq update && \
    apt-get install --no-install-recommends -y \
    curl && \
    apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    curl -L https://github.com/jwilder/dockerize/releases/download/v0.2.0/dockerize-linux-amd64-v0.2.0.tar.gz > /dockerize-linux-amd64-v0.2.0.tar.gz && \
    tar -C /usr/local/bin -xzvf dockerize-linux-amd64-v0.2.0.tar.gz && \
    rm dockerize-linux-amd64-v0.2.0.tar.gz

# Add a default proxy conf
ADD ./proxy.conf /etc/nginx/conf.d/server.tmpl

ENV ROOT_DIR=/var/www \
	PATH_PREFIX=/static \
	AUTOINDEX=0

CMD ["dockerize", "-template", "/etc/nginx/conf.d/server.tmpl:/etc/nginx/conf.d/default.conf", "nginx", "-g", "daemon off;"]
