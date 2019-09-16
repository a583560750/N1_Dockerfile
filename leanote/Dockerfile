FROM mongo

# 镜像信息
LABEL org.opencontainers.image.authors="lstcml" \
        org.opencontainers.image.title="N1_leanote" \
        org.opencontainers.image.description="Leanote" \
        org.opencontainers.image.url="https://hub.docker.com/r/lstcml/n1_Leanote" \
        org.opencontainers.image.source="https://github.com/a583560750/N1_Dockerfile"

# 安装
COPY leanote.tar.gz /tmp/
ADD run.sh /data/
COPY entrypoint.sh /usr/local/bin/
RUN  tar zxf /tmp/leanote.tar.gz -C /data/ && \
	chmod a+x /data/run.sh && \
	chmod a+x /data/leanote/bin/run.sh && \
	rm -f /etc/localtime && \
	ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
	rm -f /etc/timezone && \
	echo "Asia/Shanghai" >> /etc/timezone && \
	cp -R /data /data_tmp && \
	rm -rf /tmp/*
	
# 开放端口
EXPOSE 9000

# 执行命令
ENTRYPOINT ["entrypoint.sh"]
