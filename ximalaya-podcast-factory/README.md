# docker_N1_Webdav
搭建Webdav服务端

## 使用方法
#### 自建镜像
`git clone https://github.com/a583560750/docker_N1_Webdav.git`

`cd docker_N1_Webdav`

`docker build -t your_name/webdav:Tags .`

`docker run --name webdav -d --restart=always -e USERNAME=user -e PASSWORD=pass -v path:/webdav -p port:80 lstcml/n1_webdav your_name/oray:Tags`
#### 使用已存在的镜像
`docker run --name webdav -d --restart=always -e USERNAME=webdav -e PASSWORD=123456 -v /root/xware:/webdav -p 8060:80 lstcml/n1_webdav`

如未自定义账号密码，默认为user/pass
