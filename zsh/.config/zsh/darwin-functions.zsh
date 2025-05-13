#!/bin/zsh
#
flushdns() {
    sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder
}

update() {
  brew update; brew upgrade; 
  mas upgrade
}
