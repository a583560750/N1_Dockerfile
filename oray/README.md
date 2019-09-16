# docker_N1_oray
在docker运行的花生壳

## 使用方法
#### 自建镜像
`git clone https://github.com/a583560750/docker_N1_Oray.git`

`cd docker_N1_Oray`

`docker build -t your_name/oray:Tags .`

`docker run -d --restart=always --name oray --mac-address custom_mac your_name/oray:Tags`
#### 使用已存在的镜像
`docker run -d --restart=always --name oray --mac-address 11:22:33:44:55:66 lstcml/n1_oray`
