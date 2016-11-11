# URLremap

Simple proxy to turn remap URLs when they need to change. This allows
you to map incoming requests to `http://proxy-container/foo/bar/index.html` to `http://backend/baz/index.html`

Environment Variable   | Usage
---------------------- | ---
`INCOMING_PATH_PREFIX` | Incoming path to be remapped, e.g. `/foo/bar`
`OUTGOING_PATH_PREFIX`  | Path that is correct on the backend, e.g. `/baz`
`BACKEND_PORT`         | Port that the request should be routed to on the backend.

The backend container should be linked in as `backend`
