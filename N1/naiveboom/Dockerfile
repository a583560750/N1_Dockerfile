FROM node:10-alpine

ENV LANG=C.UTF-8

# 镜像信息.
LABEL org.opencontainers.image.authors="lstcml" \
        org.opencontainers.image.title="N1_Naiveboom" \
        org.opencontainers.image.description="Naiveboom" \
        org.opencontainers.image.url="https://hub.docker.com/r/lstcml/n1_naiveboom" \
        org.opencontainers.image.source="https://github.com/a583560750/N1_Dockerfile"

# 安装
RUN apk update  && \
	apk add --no-cache --update git redis && \
	git clone https://github.com/kchown/naiveboom.git && \
	cd naiveboom/ && \
	apk del git && \
	rm /naiveboom/.git* -rf && \
	sed -i "s#kch.host#odcn.top#g" /naiveboom/views/layout.pug && \
	sed -i "s@# ./redis-server /path/to/redis.conf@daemonize yes@g" /etc/redis.conf && \
	npm install

# 工作目录
WORKDIR /naiveboom

# 开放端口
EXPOSE 2000

# 执行命令
CMD redis-server /etc/redis.conf && node /naiveboom/run.js
