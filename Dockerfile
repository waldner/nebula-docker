FROM alpine:3.14.0

ENV NEBULA_VERSION=1.4.0

RUN apk add bash gettext nebula
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
