FROM ustclug/centos:7

MAINTAINER Yifan Gao "git@gaoyifan.com"

RUN yum install -y freeradius freeradius-mysql

ENV CACHE_DIR="/etc/docker-freeradius"

ENV TEMPLATES_DIR="${CACHE_DIR}/templates" \
    ATTRIBUTE_FIX_LIST="${CACHE_DIR}/attribute_fix_list" \
    DEFAULT_ENV="${CACHE_DIR}/default_env"

COPY assets $CACHE_DIR

COPY entrypoint/entrypoint.sh /sbin/entrypoint.sh

RUN /sbin/entrypoint.sh build

EXPOSE 1812/udp 1813/udp

ENTRYPOINT ["/sbin/entrypoint.sh"]

CMD ["/usr/sbin/radiusd", "-f", "-d", "/etc/raddb"]
