#!/bin/zsh
#
flushdns() {
    sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder
}
