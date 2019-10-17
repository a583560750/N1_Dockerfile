FROM arm64v8/alpine

# 添加环境变量
ENV LANG=C.UTF-8

# 镜像信息.
LABEL org.opencontainers.image.authors="lstcml" \
        org.opencontainers.image.title="N1_ximalaya-podcast-factory" \
        org.opencontainers.image.description="ximalaya-podcast-factory" \
        org.opencontainers.image.url="https://hub.docker.com/r/lstcml/n1_ximalaya-podcast-factory" \
        org.opencontainers.image.source="https://github.com/a583560750/docker_N1_ximalaya-podcast-factory"

# 安装

RUN apk update && \
    apk --no-cache add git python && \
	wget -O get-pip.py https://bootstrap.pypa.io/get-pip.py && \
	python get-pip.py && \
    pip install Jinja2==2.10 tornado==5.1 && \
    git clone https://github.com/hondajojo/podcast4us /app && \
    cd app && \
    apk del git && rm -rf /app/.git  && \
    sed -i "s#http://twitter.com/maijver#https://odcn.top#g" /app/templates/index.html  && \
    sed -i "s#maijver#oD^Blog#g" /app/templates/index.html
	
	 
# 工作目录
WORKDIR /app
 
# 开放端口
EXPOSE 5000

# 执行命令
CMD python start.py
