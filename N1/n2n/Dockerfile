FROM arm64v8/alpine

# 镜像信息
LABEL org.opencontainers.image.authors="lstcml" \
        org.opencontainers.image.title="n2n" \
        org.opencontainers.image.description="n2n" \
        org.opencontainers.image.url="https://hub.docker.com/r/lstcml/n2n"

#环境变量
ENV CUSTOM=0
ENV VERSION=v2
ENV N2N_PATH=/n2n
ENV DEVICE_NAME=docker_n2n
ENV N2N_IP=10.10.10.2
ENV N2N_GROUP=dockern2n
ENV SU_NODE=127.0.0.1:1000


# 安装
ADD n2n /n2n
ADD run.sh /n2n/run.sh
RUN apk add --no-cache tzdata \  
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \ 
    && echo "Asia/Shanghai" > /etc/timezone \
    && rm -rf /var/cache/apk/* \
    && rm -rf /var/lib/apk/* \
    && rm -rf /etc/apk/cache/*

# 挂载卷
VOLUME /n2n

# 运行
CMD /n2n/run.sh
