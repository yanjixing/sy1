#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# svn co https://github.com.cnpmjs.org/yanjixing/lede

#svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash

#chmod 777 package/luci-app-openclash
git clone https://github.com/yanjixing/luci-app-usb-printer.git package/luci-app-usb-printer
#unzip -j lean.zip -d package/
#git clone https://github.com/awesome-openwrt/luci-app-usb-printer.git package/luci-app-usb-printer

#git clone -b legacy https://github.com/kuoruan/luci-app-v2ray package/luci-app-v2ray
#git clone https://github.com/yanjixing/lean package/lede
#git clone https://github.com/Apocalypsor/luci-app-smartdns.git package/luci-app-smartdns
#git clone https://github.com/frainzy1477/luci-app-clash.git package/luci-app-clash

