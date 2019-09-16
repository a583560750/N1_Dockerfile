FROM arm64v8/alpine

# 添加环境变量
ENV LANG=C.UTF-8
ENV USERNAME=admin
ENV PASSWORD=root


# 镜像信息.
LABEL org.opencontainers.image.authors="lstcml" \
        org.opencontainers.image.title="N1_Webdav" \
        org.opencontainers.image.description="WebDAV docker image using caddy" \
        org.opencontainers.image.url="https://hub.docker.com/r/lstcml/n1_Webdav" \
        org.opencontainers.image.source="https://github.com/a583560750/docker_N1_Webdav"

# 安装
ADD caddy /usr/local/caddy
ADD entrypoint.sh /usr/local/caddy
RUN mkdir /webdav
RUN chmod a+x /usr/local/caddy/*

# 工作目录
WORKDIR /webdav

# 开放端口
EXPOSE 80 443

# 执行命令
ENTRYPOINT ["/usr/local/caddy/entrypoint.sh"]
