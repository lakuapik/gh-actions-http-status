FROM alpine:latest

LABEL version="0.0.1"
LABEL repository="https://github.com/lakuapik/gh-actions-http-status"
LABEL homepage="https://github.com/lakuapik/gh-actions-http-status"
LABEL maintainer="David Adi Nugroho <davidadi216@gmail.com>"

RUN apk add bash curl jq

COPY entrypoint /usr/local/bin/entrypoint
RUN chmod +x /usr/local/bin/entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint"]
