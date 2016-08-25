FROM smartentry/centos:7-0.3.0

MAINTAINER Yifan Gao <docker@yfgao.com>

COPY . $ASSETS_DIR

ENV MYSQL_DATEBASE=radius \
    MYSQL_HOST=mysql \
    MYSQL_USERNAME=radius \
    MYSQL_PASSWORD=radpass \
    MYSQL_PORT=3306 \
    RADIUS_KEY=testing123 \
    RADIUS_LISTEN=0.0.0.0

RUN smartentry.sh build

EXPOSE 1812/udp 1813/udp

ENTRYPOINT ["/sbin/smartentry.sh"]

CMD ["/usr/sbin/radiusd", "-f", "-d", "/etc/raddb"]
