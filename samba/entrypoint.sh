#! /bin/sh
#
# entrypoint.sh

#Check configfile
if [ ! -e '/etc/samba/smb.conf' ]; then
    cp -a /usr/local/share/smb.conf /etc/samba/smb.conf
fi

#Start service
smbd --no-process-group -F -S -s /etc/samba/smb.conf &
nmbd --no-process-group -F -S -s /etc/samba/smb.conf
