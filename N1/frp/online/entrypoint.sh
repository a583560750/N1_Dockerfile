#!/bin/bash
echo The application is $FRP_RUN , version is $FRP_VERSION
#INSTALL OR RUN
if [ ! -e "/frp/${FRP_RUN}" ]; then
	CHECK=(0.8.1 0.9.3 0.10.0 0.11.0 0.12.0 0.13.0 0.14.1 0.15.0 0.15.1 0.16.0 0.16.1 0.17.0 0.18.0 0.19.0 0.19.1)
	if [[ "${CHECK[*]}" =~ ${FRP_VERSION} ]];then
		OS=linux_arm
	fi
# INSTALL FRP
	mkdir /frp >/dev/null 2>&1
	mkdir /tmp/frp >/dev/null 2>&1
	if [ ${FRP_VERSION} == "latest" ];then
		if [ -z ${RELEASE+x} ]; then
			RELEASE=$(curl -sX GET "https://api.github.com/repos/fatedier/frp/releases" | jq -r 'first(.[] | select(.name | contains("v"))) | .name')
		fi
		download_url=$(curl -s https://api.github.com/repos/fatedier/frp/releases/tags/"${RELEASE}" |jq -r '.assets[].browser_download_url' |grep .tar.gz |grep arm64 |grep -v signatures)
	else
		download_url=http://lstcml.gitee.io/file/frp/frp_${FRP_VERSION}_${OS}.tar.gz
	fi
	wget -O /tmp/frp.tar.gz ${download_url}
	if [ $? -eq 1 ]; then
		if [ ${FRP_VERSION} == "latest" ];then
			echo "dowbload error,please try again"
			exit 1
		else
			echo "download error,switching download github url!"
			wget -O /tmp/frp.tar.gz https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_${OS}.tar.gz
			if [ $? -eq 1 ]; then
				echo "download error,please run again"
				exit 1
			fi
		fi
	fi
	tar -zxf /tmp/frp.tar.gz --strip-components=1 -C /tmp/frp
	cp /tmp/frp/$FRP_RUN* /frp
	rm -rf /tmp/frp*
	/frp/${FRP_RUN} -c /frp/${FRP_RUN}.ini
	if [ $? -eq 1 ]; then
		tail -f /dev/null
	fi
else
	/frp/${FRP_RUN} -c /frp/${FRP_RUN}.ini
	if [ $? -eq 1 ]; then
		tail -f /dev/null
	fi
fi
