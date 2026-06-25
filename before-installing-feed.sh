#!/bin/bash

# Remove feed sources
sed -i '/telephony/d' feeds.conf.default
sed -i '/video/d' feeds.conf.default

# Add feed sources
echo 'src-git passwall2 https://github.com/Openwrt-Passwall/openwrt-passwall2;main' >> feeds.conf.default
