#!/bin/sh
set -eu

if [ ! -e /dev/net/tun ]; then
	echo 'Zerotier启动失败: /dev/net/tun不存在'
	exit 1
fi

exec /usr/sbin/zerotier-one
