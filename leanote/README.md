# docker_N1_Leanote
自建蚂蚁笔记服务端

## 使用方法
#### 自建镜像
`git clone https://github.com/a583560750/docker_N1_Leanote.git`

`cd docker_N1_Leanote`

`docker build -t your_name/leanote:Tags .`

`docker run -d --restart=always --name leanote -p custom_port:9000 your_name/leanote:Tags`
#### 使用已存在的镜像
`docker run -d --name leanote -v /data/db:/data/db -v /leanote/conf/:/data/leanote/conf -p 8000:9000 lstcml/n1_leanote`
