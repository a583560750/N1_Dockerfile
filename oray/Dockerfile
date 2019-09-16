# Pull base image
FROM lstcml/ubuntu:armhf
# Label for Information about this Image.
LABEL org.opencontainers.image.authors="lstcml" \
        org.opencontainers.image.title="N1_Oray" \
        org.opencontainers.image.description="Oary on arm64" \
        org.opencontainers.image.url="https://hub.docker.com/r/lstcml/n1_oray" \
        org.opencontainers.image.source="https://github.com/a583560750/docker_N1_Oray"
#Install
COPY orayapp/* /usr/orayapp/
RUN chmod 777 -Rf /usr/orayapp/*
# Define default command
CMD ["bash","/usr/orayapp/oray_start.sh"]
