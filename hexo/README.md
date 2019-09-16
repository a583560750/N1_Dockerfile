# docker_N1_Hexo
在docker运行的Hexo

## 使用方法
#### 自建镜像
`git clone https://github.com/a583560750/docker_N1_Hexo.git`

`cd docker_N1_Hexo`

`docker build -t your_name/hexo:Tags .`

`docker run --name blog --restart=always -dit -p Custom_PORT:4000 -v Custom_PATH:/hexo your_name/hexo:Tags`
#### 使用已存在的镜像
`docker run --name blog --restart=always -dit -p 4000:4000 -v /blog:/hexo lstcml/n1_hexo`
