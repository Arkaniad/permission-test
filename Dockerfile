FROM debian:bullseye-slim

RUN groupadd -g 1000 unprivileged && useradd -r -u 1000 -g unprivileged unprivileged

USER unprivileged
COPY rootfs /

ENTRYPOINT /entrypoint

