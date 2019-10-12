#!/bin/sh

if [ ! -e '/hexo/_config.yml' ]; then
	cp -a /usr/local/hexo/* /hexo
fi
exec "$@"
