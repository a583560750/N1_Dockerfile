#!/bin/sh
if  [ "$SSRR" == "client" ]; then
	python /app/shadowsocks/local.py -s $SERVER_ADDR -p $SERVER_PORT -k $PASSWORD -m $METHOD -O $PROTOCOL -o $OBFS -t $TIMEOUT
else
	python /app/shadowsocks/server.py -s $SERVER_ADDR -p $SERVER_PORT -k $PASSWORD -m $METHOD -O $PROTOCOL -o $OBFS -t $TIMEOUT
fi
