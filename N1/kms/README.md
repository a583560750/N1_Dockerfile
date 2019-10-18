# docker_N1_Kms
kms激活神器

## 使用方法
#### 自建镜像
`git clone https://github.com/a583560750/docker_N1_Kms.git`

`cd docker_N1_Kms`

`docker build -t your_name/kms:Tags .`

`docker run --name kms -d --restart=always -p port:1688 your_name/kms:Tags`
#### 使用已存在的镜像
`docker run --name kms -d --restart=always  -p 1688:1688 lstcml/n1_kms`
