FROM arm64v8/alpine

# 镜像信息
LABEL org.opencontainers.image.authors="lstcml" \
        org.opencontainers.image.title="mutt" \
        org.opencontainers.image.description="mutt" \
        org.opencontainers.image.url="https://hub.docker.com/r/lstcml/mutt"

# 环境变量
ENV SMTP=smtp.163.com \
    PORT=25 \
    EUSER=xxx@163.com \
    NAME=test \
    EPASSWD=xxx  \
    TITLE=Title_Test \
    CONTENT=Content_Test

# 安装
ADD entrypoint.sh /bin/entrypoint.sh
ADD send /bin/send
RUN apk add --update mutt msmtp tzdata &&\
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    rm -rf /var/cache/apk/*

# 工作目录
WORKDIR /root

# 运行
ENTRYPOINT ["entrypoint.sh"]
