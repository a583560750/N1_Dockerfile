# N1_pgy
在docker运行的蒲公英

`docker build -t your_name/pgy:Tags .`

`docker run -d --device=/dev/net/tun --net=host --cap-add=NET_ADMIN --cap-add=SYS_ADMIN --name pgy your_name/pgy:Tags`

`docker run -d --device=/dev/net/tun --net=host --cap-add=NET_ADMIN --cap-add=SYS_ADMIN --name pgy lstcml/n1_pgy`
