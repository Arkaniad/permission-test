FROM debian:bullseye-slim

COPY rootfs /

RUN chgrp -R 0 /usr/share/zoneinfo && \
    chgrp -R 0 /etc && \
    chmod -R g=u /etc && \
    chmod -R g=u /usr/share/zoneinfo

ENTRYPOINT /entrypoint

