FROM debian:bullseye-slim

RUN groupadd -g 1000 unprivileged && useradd -r -u 1000 -g unprivileged unprivileged
RUN chown root:0 /etc/timezone && \
    chown root:0 /etc/localtime && \
    chown root:0 -R /usr/share/zoneinfo* && 
    chmod go+rw /etc/timezone && \
    chmod go+rw /etc/localtime && \
    chmod -R go+rw /usr/share/zoneinfo
USER unprivileged:unprivileged
COPY rootfs /

ENTRYPOINT /entrypoint

