# N1_Webdav
搭建Webdav服务端

`docker build -t your_name/webdav:Tags .`

`docker run --name webdav -d --restart=always -e USERNAME=user -e PASSWORD=pass -v path:/webdav -p port:80 lstcml/n1_webdav your_name/oray:Tags`

`docker run --name webdav -d --restart=always -e USERNAME=webdav -e PASSWORD=123456 -v /root/xware:/webdav -p 8060:80 lstcml/n1_webdav`

如未自定义账号密码，默认为admin/passwd

win7与win10以上默认不支持webdav的http映射，开启同时支持http/https，在dos窗口中运行以下命令：

`reg add HKLM\SYSTEM\CurrentControlSet\services\WebClient\Parameters /v BasicAuthLevel /t reg_dword /d 2 /f`

`net stop webclient`

`net start webclient`