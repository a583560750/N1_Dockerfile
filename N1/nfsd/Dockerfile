FROM arm64v8/alpine

# 镜像信息.
LABEL org.opencontainers.image.authors="lstcml" \
        org.opencontainers.image.title="nfsd" \
        org.opencontainers.image.description="nfsd" \
        org.opencontainers.image.url="https://hub.docker.com/r/lstcml/nfsd"

# 安装
COPY entrypoint.sh /bin/entrypoint.sh
RUN set -xe && \
    apk add --no-cache nfs-utils bash && \
    rm -rf /var/cache/apk/*

# 挂载卷
VOLUME /data

# 开放端口
EXPOSE 111/tcp 111/udp 2049/tcp 2049/udp 32765 32765/udp 32766 32766/udp 32767 32767/udp 32768 32768/udp

# 运行
ENTRYPOINT ["entrypoint.sh"]
