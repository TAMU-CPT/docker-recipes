# URLremap

A straightforward traditional proxy.

It is a modification of the apiurlremap to just be a typical nginx proxy. This was written to try and handle an oddity in our Apollo routing.

Environment Variable   | Usage
---------------------- | ---
`INCOMING_PATH_ROUTE`  | Incoming path to be proxied, e.g. `/foo/bar`
`BACKEND_ADDR`         | Backend uri/ip/location/route for the redirected traffic
`BACKEND_PORT`         | Port of the backend that you're wanting to listen to
`OUTGOING_PATH_ROUTE`  | Path that is correct on the backend, e.g. `/baz`
