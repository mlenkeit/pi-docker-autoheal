#ARG arch=x86_64
#FROM multiarch/alpine:${arch}-v3.8
FROM alpine:3.8

RUN apk add --no-cache curl jq

COPY docker-entrypoint /
ENTRYPOINT ["/docker-entrypoint"]

HEALTHCHECK --interval=5s CMD /docker-entrypoint healthcheck

CMD ["autoheal"]
