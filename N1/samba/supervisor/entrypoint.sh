#! /bin/sh
#
# entrypoint.sh

set -e

[[ "$DEBUG" == "true" ]] && set -x

addgroup -g $GID samba
adduser -D -H -G samba -s /bin/false -u $UID $USERNAME
echo -e "${PASSWORD:-$(hostname)}\n${PASSWORD:-$(hostname)}" | smbpasswd -a -s -c /etc/samba/smb.conf $USERNAME

/usr/bin/supervisord -c /etc/supervisord.conf
