## Basic Setup

- setup user account with username/password 
- boot into Recovery Mode (command + R) 
  * resize flash storage (main OS partition + empty volume)
  * set firmware password
- enable full disk encryption on MacOS partition (FileVault)
- Network -> Wi-Fi -> Advanced (check all from "Require admin authorization")
- Change DNS for all interfaces to: `1.1.1.1` and `8.8.8.8`
- create VeraCrypt volume non-OS partition
- enable firefwall (Firewall Options -> Block all incomming connections)
- change computer name from Sharing settings
- ZSH setup
- hosts update script
- vmrun
- netinfo
- Firefox
- Chrome
  * AddBlock plus
  * KB SSL Enforcer
  * Proxy SwitchySharp  / Switchy-Omega
  * User-Agent Switcher
  * Wappalyzer
- macOS hardening (`https://github.com/drduh/macOS-Security-and-Privacy-Guide`)

----

## File Monitoring
- `sudo fs_usage -w -f filesystem | grep Deckset`
- fsmonitor
- Little Flocker aka XFence

## Networking Tools
- Wireshark 
- WiFi Explorer Pro 
- KisMac2 
- LittleSnitch
- Tunnelblick
- OpenVPN Fix for MacOS 11+
```
# sudo /usr/local/Cellar/openvpn/2.5.0/sbin/openvpn --config VPN.conf
# sudo pfctl -a com.apple.internet-sharing/shared_v4 -s nat 2>/dev/null > /tmp/newrules.conf
# echo "nat on utun2 inet from 192.168.135.0/24 to any -> (utun2) extfilter ei" >> /tmp/newrules.conf
# sudo pfctl -a com.apple.internet-sharing/shared_v4 -N -f /tmp/newrules.conf 2>/dev/null
```
Here 192.168.13.0/24 IP range for VMs

## Productivity
- Deckset
- XMind
- Signal
- Office 365
- Quiver

## Dev
- Homebrew
- AppCode / IntelliJ IDEA / WebStorm
- Sublime Text + config
- Xcode + SDK 
- Android Studio + SDK 
- Genymotion
- Java (OpenJDK)
```
$ brew install jenv java
# make sure jenv ~/.zsh/aliasrc is set up
$ jenv add /usr/local/Cellar/openjdk/*
$ jenv versions # system is selected by default
$ jenv global `jenv versions | tail -n1` # set it to Homebrew java
$ java --version
```
- Jadx
```
$ brew install jadx
$ jadx /tmp/app.apk >/dev/null 2>/dev/null
```

## Utils 
- AppCleaner
- Spectacle 
- The Unarchiver 
- iTerm2 
- srm
- Pock
- Folx
- balenaEtcher

## VMs
- VMWare Fusion
- VirtualBox

## Web Sec
- OWASP ZAP
- burp suite (license + cert)
  * jyton/jruby
  * relevant plugins
