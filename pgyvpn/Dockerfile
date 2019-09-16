FROM lstcml/ubuntu:armhf

# 镜像信息
LABEL org.opencontainers.image.authors="lstcml" \
        org.opencontainers.image.title="N1_Pgy" \
        org.opencontainers.image.description="pgy on arm64" \
        org.opencontainers.image.url="https://hub.docker.com/r/lstcml/n1_pgy" \
        org.opencontainers.image.source="https://github.com/a583560750/N1_Dockerfile"

#安装
COPY PgyVPN-2.2.0.deb /root/
RUN dpkg -i /root/PgyVPN-2.2.0.deb \
	&& rm -rf /root/PgyVPN-2.2.0.deb

# 执行命令
CMD /usr/sbin/pgyvpn_svr -R -t -i pgyapi.oray.net -K 255.255.255.255 -u /usr/share/pgyvpn/script/ip-up -w /usr/share/pgyvpn/script/ip-down -c /usr/share/pgyvpn/script/p2ppreconn -o /usr/share/pgyvpn/script/p2ppredisconn -p /var/log/oray/pgyvpn_svr -S "" --login