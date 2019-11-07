#!/bin/sh
if [ ! -e "/app/${RUN_APP}" ]; then
	if [ -n "$VERSION" ]; then
		URL=`curl -s http://firmware.koolshare.cn/binary/Easy-Explorer/ | grep "<a.*href*" | sed 's/\(.*\)href="\([^"\n]*\)"\(.*\)/\2/g' | grep "http://firmware.koolshare.cn/binary/Easy-Explorer/*" | grep "${VERSION}"`

	else
		URL=`curl -s http://firmware.koolshare.cn/binary/Easy-Explorer/ | grep "<a.*href*" | sed 's/\(.*\)href="\([^"\n]*\)"\(.*\)/\2/g' | grep "http://firmware.koolshare.cn/binary/Easy-Explorer/*" | sort | tail -n1`
	fi
	if [ -n "${URL}" ]; then
		DOWN_URL=${URL}${RUN_APP}
		wget -O /app/${RUN_APP} ${DOWN_URL}
		chmod 755 /app/${RUN_APP}
	else
	
		echo "Failed to get URL!"
		exit 1
	fi
fi
/app/${RUN_APP} -fe :${PORT}
