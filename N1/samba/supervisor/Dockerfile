FROM arm64v8/alpine


# 镜像信息.
LABEL org.opencontainers.image.authors="lstcml" \
        org.opencontainers.image.title="N1_samba" \
        org.opencontainers.image.description="samba" \
        org.opencontainers.image.url="https://hub.docker.com/r/lstcml/n1_samba" \
        org.opencontainers.image.source="https://github.com/a583560750/docker_N1_samba"
			

# 添加环境变量	
ENV UID         1000
ENV GID         1000
ENV USERNAME    samba
ENV PASSWORD=

# 安装
RUN set -xe && \
    apk add --no-cache samba-server samba-common-tools supervisor

COPY smb.conf /etc/samba/smb.conf
COPY supervisord.ini /etc/supervisor.d/supervisord.ini
COPY entrypoint.sh /usr/bin/entrypoint.sh

# 挂载卷
VOLUME /mnt

# 开放端口
EXPOSE 137/udp 138/udp 139/tcp 445/tcp

#执行命令
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
