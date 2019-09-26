FROM arm64v8/ubuntu

# 镜像信息.
LABEL org.opencontainers.image.authors="lstcml" \
        org.opencontainers.image.title="N1_zerotier" \
        org.opencontainers.image.description="zerotier" \
        org.opencontainers.image.url="https://hub.docker.com/r/lstcml/n1_zerotier" \
        org.opencontainers.image.source="https://github.com/a583560750/N1_Dockerfile"

# 安装
ADD sbin /usr/sbin/

# 运行
ENTRYPOINT ["entrypoint.sh"]
