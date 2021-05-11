NOTE: Execute only the steps required for your setup. This is not a de facto approach.

- `su` and `apt-get install sudo`

- update/upgrade + kernel headers and some basic packages
```
$ sudo apt-get update && sudo apt-get upgrade -yqq && sudo apt-get dist-upgrade -yqq
$ sudo apt-get install linux-headers-`uname -r` linux-image-`uname -r` -yqq
$ sudo apt-get install binutils usbutils apt-transport-https ca-certificates curl httpie -yqq
```

- when laptop lid is closed do nothing
```
# echo HandleLidSwitch=ignore >> /etc/systemd/logind.conf
# echo HandleLidSwitchDocked=ignore >> /etc/systemd/logind.conf
# service systemd-logind restart
```

- disable/enable hibernation
```
# systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target   # disable
# systemctl unmask sleep.target suspend.target hibernate.target hybrid-sleep.target # enable
```

- install `net-tools` package for `route` and `ifconfig`

- install `open-vm-tools` package and test file-share

- install `openssh-server` package and `# update-rc.d ssh enable`

- push SSH public key into `~/.ssh/authorized_keys` & disable passworld login `PasswordAuthentication no` in `/etc/ssh/sshd_config`; verify with `# nmap -p22 $IP --script ssh-auth-methods -v`

- add user to sudoers
```
$ echo `whoami` > /tmp/user
$ sudo su
# echo "$(cat /tmp/user) ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
```

- disable extra services (proceed with caution)
```
$ sudo netstat -tulnpe
$ sudo systemctl disable systemd-resolved cups avahi-daemon
$ sudo systemctl stop systemd-resolved cups avahi-daemon
```

- fix DNS
```
$ sudo rm /etc/resolv.conf
$ cat /etc/resolv.conf
nameserver 1.1.1.1
$ nslookup google.com
```

- disable IPv6 - `/etc/sysctl.conf` && `# sudo sysctl -p` (!THIS MIGHT BREAK VPN!)
```
net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1
```

- get networking interface name
```
# /sbin/ip -4 -o a | cut -d ' ' -f 2,7
```

- dynamic vs. static IP: `/etc/network/interfaces`

```
# The loopback network interface
auto lo
iface lo inet loopback

# The primary network interface

## by DHCP: dhclient enp0s31f6
#auto enp0s31f6
#allow-hotplug enp0s31f6
#iface enp0s31f6 inet dhcp


## manual
auto enp0s31f6
iface enp0s31f6 inet static
   address 192.168.66.10
   netmask 255.255.255.0
   gateway 192.168.66.1
   dns-nameservers 1.1.1.1
   dns-nameservers 8.8.8.8
```

- bye bye `systemd-networkd`, hello `sudo apt install ifupdown -yqq`
```
$ sudo systemctl disable systemd-networkd systemd-networkd.socket networkd-dispatcher systemd-networkd-wait-online
$ sudo systemctl stop systemd-networkd systemd-networkd.socket networkd-dispatcher systemd-networkd-wait-online
```

- change `/etc/motd` login text
```
$ echo 'Hack the planet!' | cowsay > /tmp/motd
$ sudo cp /tmp/motd /etc/motd
$ touch ~/.hushlogin # or disable it
```

- install `docker`
```
https://docs.docker.com/install/linux/docker-ce/debian/
https://docs.docker.com/install/linux/linux-postinstall/
```

- customize `~/.bash_profile` for `bash`

- set `python3` as default Python on OS (or remove `python2*` entirely)
```
# update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1
# update-alternatives --install /usr/bin/python python /usr/bin/python3 2
# update-alternatives --config python
```

- install `netinfo`

- install WiFi drivers `https://wiki.debian.org/ath9k_htc/open_firmware`

- install `macchanger`

- install `locate` for fast search
```
$ sudo apt-get install locate
$ sudo updatedb
$ locate raft-large-directories.txt
```

- configure `~/.gitconfig`
```
[core]
	editor = nano -w~
[user]
	email = <YOUR_USER>@users.noreply.github.com
```
