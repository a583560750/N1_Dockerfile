FROM arm64v8/alpine

# 镜像信息
LABEL org.opencontainers.image.authors="lstcml" \
        org.opencontainers.image.title="N1_minidlna" \
        org.opencontainers.image.description="minidlna" \
        org.opencontainers.image.url="https://hub.docker.com/r/lstcml/n1_minidlna"

# 安装
RUN apk add minidlna
ADD minidlna.conf /etc/minidlna/minidlna.conf
ADD minidlna.conf /usr/share/minidlna.conf
ADD run.sh /bin/run.sh

# 挂载卷
VOLUME /etc/minidlna

# 工作目录
WORKDIR /media

# 运行
CMD run.sh
