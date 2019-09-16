# docker_N1_pgy
在docker运行的蒲公英

## 使用方法
#### 自建镜像
`git clone https://github.com/a583560750/docker_N1_Pgy.git`

`cd docker_N1_Pgy`

`docker build -t your_name/pgy:Tags .`

`docker run -d --restart=always --name pgy --mac-address custom_mac your_name/pgy:Tags`
#### 使用已存在的镜像
`docker run -d --restart=always --name pgy --mac-address 11:22:33:44:55:66 lstcml/n1_pgy`
