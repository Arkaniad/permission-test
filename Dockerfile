FROM debian:bullseye-slim

COPY rootfs /

RUN chgrp -R 0 /usr/share/zoneinfo && \
    chgrp 0 /etc && \
    chgrp 0 /etc/localtime && \
    chgrp 0 /etc/timezone && \
    chmod g=u /etc && \
    chmod g=u /etc/localtime && \
    chmod g=u /etc/timezone && \
    chmod -R g=u /usr/share/zoneinfo

ENTRYPOINT /entrypoint

