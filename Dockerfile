FROM alpine:3.3
MAINTAINER Ryan Schlesinger <ryan@outstand.com>

RUN apk add --update \
  python \
  py-pip \
  && pip install consulate \
  && rm -rf /var/cache/apk/*

ENTRYPOINT ["consulate"]
