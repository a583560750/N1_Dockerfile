FROM arm64v8/alpine


# 镜像信息
LABEL org.opencontainers.image.authors="lstcml" \
        org.opencontainers.image.title="samba" \
        org.opencontainers.image.description="samba" \
        org.opencontainers.image.url="https://hub.docker.com/r/lstcml/samba"
                        
# 添加环境变量	
ENV UID         1000
ENV GID         1000
ENV USERNAME    admin
ENV PASSWORD	admin

# 安装
RUN apk add --no-cache samba-server samba-common-tools && \
    addgroup -g $GID samba && \
    adduser -D -H -G samba -s /bin/false -u $UID $USERNAME &&\
    echo -e "${PASSWORD:-$(hostname)}\n${PASSWORD:-$(hostname)}" | smbpasswd -a -s -c /etc/samba/smb.conf $USERNAME
COPY smb.conf /etc/samba/smb.conf
COPY smb.conf /usr/local/share/smb.conf
COPY entrypoint.sh /usr/bin/entrypoint.sh

# 挂载卷
VOLUME /mnt /etc/samba

# 开放端口
EXPOSE 137/udp 138/udp 139/tcp 445/tcp

#执行命令
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
