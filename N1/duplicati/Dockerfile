FROM lsiobase/mono:arm64v8-LTS

ARG BUILD_DATE
ARG VERSION
ARG DUPLICATI_RELEASE
ENV HOME="/config"
ENV TZ=Asia/Shanghai

RUN apt-get update && \
    apt-get install jq -y
COPY root/ /

EXPOSE 8200

VOLUME /backups /config /source
