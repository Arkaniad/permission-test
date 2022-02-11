FROM debian:bullseye-slim

RUN chgrp 0 /etc/timezone && \
    chgrp 0 /etc/localtime && \
    chgrp -R 0 /usr/share/zoneinfo && \
    chmod g=u /etc/timezone && \
    chmod g=u /etc/localtime && \
    chmod -R g=u /usr/share/zoneinfo

COPY rootfs /

ENTRYPOINT /entrypoint

