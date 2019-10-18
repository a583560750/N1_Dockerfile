#!/bin/sh
if [ -z ${PASSWORD} ]; then
  PASSWORD=$(< /dev/urandom tr -dc A-Za-z0-9 | head -c${1:-16};echo;)
  echo "Generated password for user 'root': ${PASSWORD}"
fi
# set ftp user password
echo "root:${PASSWORD}" |/usr/sbin/chpasswd

if [ -z $1 ]; then  
    /usr/sbin/sshd -D
else
  $@
fi
