# docker_N1_Bypy
docker中运行的百度云同步工具
## 使用方法
#### 自建镜像
`git clone https://github.com/a583560750/docker_N1_Bypy.git`

`cd docker_N1_Bypy`

`docker build -t your_name/bypy:Tags .`

`docker run -dit --restart=always --name bypy your_name/bypy:Tags`
#### 使用已存在的镜像
`docker run -dit --restart=always --name bypy lstcml/n1_bypy`

### bypy使用参考
[github_bypy](https://github.com/houtianze/bypy/ "github_bypy")

[N1安装bypy](http://www.liangshitian.top/2019/02/21/N1%E5%AE%89%E8%A3%85bypy%E5%90%8C%E6%AD%A5%E7%99%BE%E5%BA%A6%E4%BA%91/ "N1安装bypy")

[bypy-百度网盘Python客户端](https://www.jianshu.com/p/c9467daf701f/ "bypy-百度网盘Python客户端")

