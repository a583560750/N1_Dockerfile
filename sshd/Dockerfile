FROM arm64v8/alpine

# 镜像信息.
LABEL org.opencontainers.image.authors="lstcml" \
        org.opencontainers.image.title="N1_sshd" \
        org.opencontainers.image.description="sshd" \
        org.opencontainers.image.url="https://hub.docker.com/r/lstcml/n1_sshd" \
        org.opencontainers.image.source="https://github.com/a583560750/Dockerfile"

# 安装
ADD run.sh /run.sh
ADD sshd_config /etc/ssh/sshd_config
RUN apk --update add --no-cache openssh bash && \
	sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config && \
	rm -rf /var/cache/apk/* && \
	adduser -h /home/mhtsbt -s /bin/false -D mhtsbt && \
	/usr/bin/ssh-keygen -A && \
	ssh-keygen -t rsa -b 4096 -f  /etc/ssh/ssh_host_key

# 开放端口
EXPOSE 22

#执行命令
CMD ["sh","run.sh"]
