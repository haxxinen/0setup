#!/usr/bin/env bash

default_hosts="
##
# Host Database
#
# localhost is used to configure the loopback interface
# when the system is booting.  Do not change this entry.
##
127.0.0.1       localhost
255.255.255.255 broadcasthost
::1             localhost
"

[[ ! $EUID -eq 0 ]] && echo 'Not root.' && exit

url='https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts'
hosts='/etc/hosts'

cp $hosts "$hosts.backup"
echo "Made a backup here: $hosts.backup"

echo "$default_hosts" > $hosts

echo -e '\n#################################\n' >> $hosts
curl -sSL $url | grep '0.0.0.0' >> $hosts
