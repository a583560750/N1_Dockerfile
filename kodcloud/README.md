# docker_N1_Kodcloud
在docker运行的可道云

`docker build -t your_name/Kodcloud:Tags .`

`docker run -d --restart=always --name kdcloud -v Your_PATH:/var/www/html lstcml/n1_kodcloud:Tags`

`docker run -d --restart=always --name kdcloud -v /var/www:/var/www/html lstcml/n1_kodcloud`
