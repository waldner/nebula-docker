FROM alpine:3.13.0

ENV NEBULA_VERSION=1.3.0

RUN apk add bash gettext nebula
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

CMD [ "/nebula", "-config", "/config.yml" ]

