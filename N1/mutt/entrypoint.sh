#!/bin/sh
if [ ! -e '/root/.msmtprc' ]; then
	echo -e "account default
host $SMTP
port $PORT
from $EUSER
auth login
tls_starttls off
user $EUSER
password $EPASSWD
logfile ~/.msmtp.log">/root/.msmtprc
fi

if [ ! -e '/root/.muttrc' ]; then
	echo -e "set sendmail=/usr/bin/msmtp
set use_from=yes
set realname=$NAME
set from=$EUSER
set envelope_from=yes
set editor=vim">/root/.muttrc
chmod 755 ~/.msmtprc
fi
tail -f /dev/null
