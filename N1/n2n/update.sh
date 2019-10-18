#!/bin/sh
TOOLS="openssl-dev build-base make git cmake gcc libc-dev bsd-compat-headers linux-headers musl-dev bash bash-doc bash-completion autoconf automake"
apk add $TOOLS
if [ $? -eq 0 ]; then
	git clone https://github.com/ntop/n2n /tmp/n2n
	if [ $? -eq 0 ]; then
		cd /tmp/n2n
		./autogen.sh
		./configure
		make
		make install
		if [ $? -eq 0 ]; then
			apk del $TOOLS
			killall edge
			rm -f /n2n/v2*
			mv /tmp/n2n/edge /n2n/v2
			mv /tmp/n2n/supernode /n2n/v2
			rm -rf /tmp/n2n
			echo "n2n update success!"
		fi
	else
		echo "n2n update fail!"
	fi
else
	echo "n2n update fail!"
fi
