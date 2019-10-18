FROM arm64v8/ubuntu

# 镜像信息.
LABEL org.opencontainers.image.authors="lstcml" \
        org.opencontainers.image.title="firefox" \
        org.opencontainers.image.description="firefox" \
        org.opencontainers.image.url="https://hub.docker.com/r/lstcml/firefox" \
        org.opencontainers.image.source="https://github.com/a583560750/N1_Dockerfile"

# 安装
ADD entrypoint.sh /bin/entrypoint.sh
RUN set -xe \
	&& apt update -y \
	&& apt install -f perl-base=5.22.1-9 -y \
	&& apt install git xvfb x11vnc python firefox xfonts-wqy -y \
	&& groupadd firefox \
	&& useradd -m -g firefox firefox \
	&& echo 'firefox:admin' | chpasswd
	
# 指定用户
USER firefox

# 环境变量

ENV USER=firefox \
    DISPLAY=:1 \
    HOME=/home/firefox \
    VNC_PASSWD=admin \
    VNC_PORT=5905 \
    VNC_RESOLUTION=1024x768 \
    VNC_COL_DEPTH=24  \
    NOVNC_PORT=6080 \
    NOVNC_HOME=/home/firefox/noVNC \
	NEW_URL=www.baidu.com

# 工作目录
WORKDIR $NOVNC_HOME

# 安装
RUN set -xe \
	&& git clone https://github.com/novnc/noVNC.git $HOME \
	&& git clone https://github.com/novnc/websockify.git $NOVNC_HOME/utils/

# 运行
ENTRYPOINT ["entrypoint.sh"]
