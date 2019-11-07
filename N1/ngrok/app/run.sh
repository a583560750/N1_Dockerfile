#!/bin/sh
ADDRESS="http: $IP:$PORT"
CUSTOM_DOMAIN="hostname: $DOMAIN"
SUB_DOMAIN="subdomain: $SUBDOMAIN"

if [ ${RUN_APP} == "xmq" ];then
	if [ ! -e "/app/xmq.c" ]; then
		rm -f /app/xmq.conf
		cp -a /app/ngrok.conf /app/xmq.conf
		sed -i "s/your_token/$XMQTOKEN/g" /app/xmq.conf
		if [ ${HOSTNAME} == "1" ];then
			sed -i "s/subdomain:/$CUSTOM_DOMAIN/g" /app/xmq.conf
		else
			sed -i "s/subdomain:/$SUB_DOMAIN/g" /app/xmq.conf
		fi
		sed -i "s/http:/$ADDRESS/g" /app/xmq.conf
		touch /app/xmq.c
	fi
	/app/xmq -config=/app/xmq.conf -log=xmq.log start-all
elif [ ${RUN_APP} == "gf" ];then
	if [ ! -e '/root/.ngrok2/ngrok.yml' ]; then
		/app/gf authtoken $GFTOKEN
	fi
	/app/gf http $IP:$PORT
elif [ ${RUN_APP} == "sunny" ];then
	if [ -n "${CLIENTID1}" ]; then
		if [ -n "${CLIENTID2}" ]; then
			/app/sunny clientid $CLIENTID1,$CLIENTID2
		else
			/app/sunny clientid $CLIENTID1
		fi
	else
		if [ -n "${CLIENTID2}" ]; then
			/app/sunny clientid $CLIENTID2
		else
			echo clientid is null
		fi
	fi
else
	rm -rf /app
	exit 1
fi
