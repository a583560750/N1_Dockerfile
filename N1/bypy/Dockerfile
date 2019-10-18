FROM arm64v8/alpine
ENV LANG=C.UTF-8

# Label for Information about this Image.
LABEL org.opencontainers.image.authors="lstcml" \
        org.opencontainers.image.title="N1_Bypy" \
        org.opencontainers.image.description="Baidu cloud synchronization" \
        org.opencontainers.image.url="https://hub.docker.com/r/lstcml/n1_bypy" \
        org.opencontainers.image.source="https://github.com/a583560750/docker_N1_Bypy"

# Install
RUN set -x \
  && apk --update --no-cache add wget python\
  && wget -O /tmp/get-pip.py https://bootstrap.pypa.io/get-pip.py \
  && python /tmp/get-pip.py \
  && pip install requests \
  && pip install bypy \
  && rm -rf /tmp/*

# Workdir
WORKDIR /root
