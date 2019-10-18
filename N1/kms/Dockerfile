FROM arm64v8/alpine

# 添加环境变量
ENV LANG C.UTF-8

# 镜像信息.
LABEL org.opencontainers.image.authors="lstcml" \
        org.opencontainers.image.title="N1_Kms" \
        org.opencontainers.image.description="py-kms" \
        org.opencontainers.image.url="https://hub.docker.com/r/lstcml/n1_kms" \
        org.opencontainers.image.source="https://github.com/a583560750/docker_N1_Kms"
		
# 工作目录
WORKDIR /kms

# 安装
ADD py-kms /kms
RUN apk --no-cache update && \
    apk add --no-cache python


# 开放端口
EXPOSE 1688

# 执行命令
CMD ["python", "/kms/server.py"]
