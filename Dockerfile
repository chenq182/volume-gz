FROM alpine:3.7

COPY volume-gz.sh /
VOLUME /volume
VOLUME /backup
ENTRYPOINT [ "/bin/sh", "/volume-gz.sh" ]
