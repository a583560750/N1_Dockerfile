FROM arm64v8/alpine

# 镜像信息
LABEL org.opencontainers.image.authors="lstcml" \
      org.opencontainers.image.title="ngrok"

# 环境变量
ENV RUN_APP=xmq \
    GFTOKEN="lstcml" \
    XMQTOKEN="lstcml" \
    CLIENTID1="lstcml" \
    CLIENTID2="lstcml" \
    IP="127.0.0.1" \
    HOSTNAME="lstcml" \
    PORT=80 \
    DOMAIN="lstcml" \
    SUBDOMAIN="lstcml"

# 安装
ADD app /app
RUN apk add --update ca-certificates tzdata &&\
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    rm -rf /var/cache/apk/*

# 工作目录
WORKDIR /app

# 运行
CMD /app/run.sh
