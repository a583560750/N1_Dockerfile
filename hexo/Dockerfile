FROM node:10-alpine

ENV LANG=C.UTF-8

# 镜像信息.
LABEL org.opencontainers.image.authors="lstcml" \
        org.opencontainers.image.title="N1_Hexo" \
        org.opencontainers.image.description="Hexo" \
        org.opencontainers.image.url="https://hub.docker.com/r/lstcml/n1_hexo" \
        org.opencontainers.image.source="https://github.com/a583560750/N1_Dockerfile"



#安装
RUN apk add --no-cache git \
    && npm config set unsafe-perm true \
    && npm install -g hexo-cli \
    && npm cache clear --force \
    && npm config set unsafe-perm false \
    && rm -rf /tmp/* \
    && hexo init hexo \
    && cd hexo && npm install



# 工作目录
WORKDIR /hexo

# 开放端口
EXPOSE 4000

# 执行命令
ENTRYPOINT ["hexo","server"]
