FROM smartentry/alpine:3.11-0.4.3

MAINTAINER Zhaofeng Yang <yangzhaofengsteven@gmail.com>

COPY .docker $ASSETS_DIR

RUN smartentry.sh build

EXPOSE 1812/udp 1813/udp

CMD ["/usr/sbin/radiusd", "-f", "-d", "/etc/raddb"]
