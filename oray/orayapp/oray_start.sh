#!/bin/bash
#
# Start oray
#
mkdir /var/log/phddns >/dev/null 2>&1
chmod 666 /var/log/phddns
rm /tmp/pray* >/dev/null 2>&1
/usr/orayapp/phdaemon

