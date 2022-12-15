FROM alpine:3.16

RUN apk update && \
    apk add --no-cache dnsmasq tzdata

ENV TZ Europe/London

EXPOSE 67/udp

#ENTRYPOINT ["tail", "-f", "/dev/null"]
ENTRYPOINT ["dnsmasq", "--keep-in-foreground", "--log-facility=-"]
