#!/bin/sh

if [ ! -e '/etc/minidlna/minidlna.conf' ]; then
	cp -a /usr/share/minidlna.conf /etc/minidlna/minidlna.conf
fi

minidlnad -R -f /etc/minidlna/minidlna.conf
while true; do sleep 10000; done
