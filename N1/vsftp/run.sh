#!/bin/sh
if [ ! -e '/etc/vsftpd/chroot_list' ]; then
	    cp -a /etc/chroot_list /etc/vsftpd/chroot_list
fi
if [ ! -e '/etc/vsftpd/vsftpd.conf' ]; then
	    cp -a /etc/vsftpd.conf /etc/vsftpd/vsftpd.conf
fi
/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf
