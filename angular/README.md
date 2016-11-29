# Node/Yarn Builder Container

We write a large number of frontends that have to talk to django based
backends. This dockerfile helps compile the frontend into a set of artefacts
usable with a static file server.

## Environment Variables

Environment Variable | Usage
-------------------- | ---
`BACKEND_URL`        | Location of the backend server. When set at runtime, this will replace the backend server URL in the javascript files, and thus they are ready for deployment.


## Using This Container

Copy and paste this into your project.

```Dockerfile
FROM quay.io/tamu_cpt/frontend-builder

ADD . /app
WORKDIR /app

RUN make node_modules && \
	npm rebuild node-sass && \
	make build && \
	cp *.html /output/ && \
	cp -Rv css /output/ && \
	cp -Rv build/ /output/ && \
	cp -Rv partials/ /output/ && \
	rm -rf build
```
