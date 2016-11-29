FROM node:4

ADD entrypoint.sh /entrypoint.sh
RUN npm install -g yarn && \
	mkdir /output/

ENV BACKEND_URL http://localhost:8000

CMD ["/entrypoint.sh"]
