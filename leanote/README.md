# N1_Leanote
自建蚂蚁笔记服务端

`docker build -t your_name/leanote:Tags .`

`docker create -d --restart=always --name leanote -p custom_port:9000 your_name/leanote:Tags`

`docker run -d --name leanote -v /data/db:/data/db -v /leanote/conf/:/data/leanote/conf -p 8000:9000 lstcml/n1_leanote`
