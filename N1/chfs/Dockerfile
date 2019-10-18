FROM arm64v8/alpine

# 镜像信息
LABEL org.opencontainers.image.authors="lstcml" \
        org.opencontainers.image.title="N1_chfs" \
        org.opencontainers.image.description="chfs" \
        org.opencontainers.image.url="https://hub.docker.com/r/lstcml/n1_chfs" \
        org.opencontainers.image.source="https://github.com/a583560750/N1_Dockerfile"

# 安装
ADD app /app
ADD config /config
RUN mv /app/addusr /usr/bin && \
    mv /app/delusr /usr/bin

# 工作目录
WORKDIR /data

# 挂载目录
VOLUME /data

# 运行
CMD ["/app/run.sh"]