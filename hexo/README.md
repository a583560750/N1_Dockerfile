# docker_N1_Hexo
在docker运行的Hexo

`docker create --name blog --restart=always -dit -p Custom_PORT:4000 -v Custom_PATH:/hexo your_name/hexo:Tags`
`docker run --name blog --restart=always -dit -p 4000:4000 -v /blog:/hexo lstcml/n1_hexo`
