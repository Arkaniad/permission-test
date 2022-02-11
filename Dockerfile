FROM debian:bullseye-slim


RUN groupadd -g 1000 unprivileged && useradd -r -u 1000 -g unprivileged unprivileged
RUN sudo chmod 666 /etc/timezone && sudo chmod 666 /etc/localtime && sudo /usr/share/zoneinfo/*

USER unprivileged:unprivileged
COPY rootfs /

ENTRYPOINT /entrypoint

