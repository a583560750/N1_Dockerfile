FROM arm64v8/alpine

# 镜像信息.
LABEL org.opencontainers.image.authors="lstcml" \
        org.opencontainers.image.title="easy-explorer" \
        org.opencontainers.image.description="easy-explorer" \
        org.opencontainers.image.url="https://hub.docker.com/r/lstcml/easy-explorer"

# 工作目录
WORKDIR /app

# 环境变量
ENV RUN_APP=easy-explorer-arm \
    PORT=8899 \
    VERSION=

# 安装
ADD entrypoint.sh /bin/entrypoint.sh
RUN apk add curl tzdata &&\
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
	rm -rf /var/cache/apk/*

# 运行
ENTRYPOINT ["entrypoint.sh"]
