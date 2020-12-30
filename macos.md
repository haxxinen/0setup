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
- Java SDK
- Android Studio + SDK 
- Genymotion

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
