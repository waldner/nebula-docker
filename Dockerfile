FROM alpine:3.15.0

ENV NEBULA_VERSION=1.5.2

RUN apk add bash gettext
ADD https://github.com/slackhq/nebula/releases/download/v${NEBULA_VERSION}/nebula-linux-amd64.tar.gz .
RUN tar -zxf nebula-linux-amd64.tar.gz -C /usr/local/bin && \
  mkdir /etc/nebula

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
