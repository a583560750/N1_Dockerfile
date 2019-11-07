#FRP_OFFLINE
FROM arm64v8/alpine

# 镜像信息
LABEL org.opencontainers.image.authors="lstcml" \
      org.opencontainers.image.title="frp" \
      org.opencontainers.image.url="https://hub.docker.com/r/lstcml/frp"

# 设置时区/安装
ADD entrypoint.sh /bin/entrypoint.sh
ADD offline_frp /usr/local/offline_frp
ENV FRP_VERSION 0.25.2
ENV FRP_RUN frpc
ENV OS linux_arm64
RUN apk add --update bash tzdata \
	&& rm -rf /var/cache/apk/*
ENV TZ=Asia/Shanghai

# 工作目录
WORKDIR /frp

# 挂载卷
VOLUME /frp

# 运行
ENTRYPOINT ["entrypoint.sh"]
