#!/bin/sh
# Enable Wake-on-LAN for all ethernet interfaces
for iface in $(ls /sys/class/net/ | grep -E '^e(n|th)'); do
    echo "Setting WOL for $iface"
    /usr/sbin/ethtool -s "$iface" wol g
done
