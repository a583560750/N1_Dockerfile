FROM arm64v8/ubuntu

# 镜像信息.
LABEL org.opencontainers.image.authors="lstcml" \
        org.opencontainers.image.title="vsftp" \
        org.opencontainers.image.description="vsftp" \
        org.opencontainers.image.url="https://hub.docker.com/r/lstcml/vsftp"
		
# 安装
ADD vsftpd /etc/vsftpd
ADD addusr /bin/addusr
ADD run.sh /bin/run.sh
RUN apt-get update -y && \
	apt-get install vsftpd -y && \
	useradd ftpusr -m -s /usr/sbin/nologin && \
	echo "ftpusr:123456" |chpasswd && \
	chown ftpusr /home/ftpusr && \
	echo "ftpusr" >> /etc/vsftpd/chroot_list &&\
	mkdir -p /var/run/vsftpd/empty && \
	cp -a /etc/vsftpd/* /etc

# 执行命令
CMD run.sh
