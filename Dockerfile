FROM centos:7

MAINTAINER Yifan Gao "git@gaoyifan.com"

COPY assets /etc/docker-assets

COPY entrypoint/entrypoint.sh /sbin/entrypoint.sh

RUN /sbin/entrypoint.sh build

EXPOSE 1812/udp 1813/udp

ENTRYPOINT ["/sbin/entrypoint.sh"]

CMD ["/usr/sbin/radiusd", "-f", "-d", "/etc/raddb"]
