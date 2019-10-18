FROM arm64v8/alpine

# 镜像信息
LABEL org.opencontainers.image.authors="lstcml" \
        org.opencontainers.image.title="shadowsocksr" \
        org.opencontainers.image.description="shadowsocksr" \
        org.opencontainers.image.url="https://hub.docker.com/r/lstcml/shadowsocksr" \
        org.opencontainers.image.source="https://github.com/a583560750/N1_Dockerfile"

# 安装
ADD shadowsocks /app/shadowsocks
ADD run.sh /bin/run.sh
RUN set -ex \
    && apk --update add --no-cache python libsodium rng-tools \
    && rm -rf /var/cache/apk

ENV SERVER_ADDR 0.0.0.0
ENV SERVER_PORT 58000
ENV PASSWORD    lstcml
ENV METHOD      aes-256-cfb
ENV PROTOCOL    auth_sha1_v4
ENV OBFS        tls1.2_ticket_auth
ENV TIMEOUT     300

# 工作目录
WORKDIR /app/shadowsocks


# 开放端口
EXPOSE $SERVER_PORT/tcp
EXPOSE $SERVER_PORT/udp

# 执行命令
CMD run.sh
