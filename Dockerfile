FROM smartentry/centos:7-0.3.2

MAINTAINER Yifan Gao <docker@yfgao.com>

COPY . $ASSETS_DIR

RUN smartentry.sh build

EXPOSE 1812/udp 1813/udp

CMD ["/usr/sbin/radiusd", "-f", "-d", "/etc/raddb"]
