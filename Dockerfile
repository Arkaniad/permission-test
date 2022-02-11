FROM debian:bullseye-slim

RUN groupadd -g 1000 unprivileged && useradd -r -u 1000 -g unprivileged unprivileged
RUN chmod 666 /etc/timezone && chmod 777 /etc/localtime && chmod 777 -R /usr/share/zoneinfo/*

USER unprivileged:unprivileged
COPY rootfs /

ENTRYPOINT /entrypoint

