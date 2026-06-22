#!/bin/bash

# Remove feed sources
sed -i '/telephony/d' feeds.conf.default
sed -i '/video/d' feeds.conf.default

# Add feed sources
echo 'src-git passwall2 https://github.com/Openwrt-Passwall/openwrt-passwall2;main' >> feeds.conf.default

# Add mosdns
find ./ | grep Makefile | grep v2ray-geodata | xargs rm -f
find ./ | grep Makefile | grep mosdns | xargs rm -f
git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata
