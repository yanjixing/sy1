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

svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash

#chmod 777 package/luci-app-openclash

git clone https://github.com/awesome-openwrt/luci-app-usb-printer.git package/luci-app-usb-printer

#git clone https://github.com/frainzy1477/luci-app-clash.git package/luci-app-clash
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
cd package/base-files/files
mkdir -p etc/openclash/core
          # for updates, go to: https://github.com/Dreamacro/clash/releases
wget -qO- https://github.com/Dreamacro/clash/releases/download/v1.3.5/clash-linux-armv8-v1.3.5.gz | gunzip -c > etc/openclash/core/clash
          # for updates, go to: https://github.com/vernesong/OpenClash/releases/tag/TUN-Premium
wget -qO- https://github.com/vernesong/OpenClash/releases/download/TUN-Premium/clash-linux-armv8-2021.01.01.g0ab75c5.gz | gunzip -c > etc/openclash/core/clash_tun
          # for updates, go to: https://github.com/vernesong/OpenClash/releases/tag/TUN
wget -qO- https://github.com/vernesong/OpenClash/releases/download/TUN/clash-linux-armv8.tar.gz | tar xOvz > etc/openclash/core/clash_game
chmod +x etc/openclash/core/clash*

cd openwrt

rm -rf feeds/packages/libs/libcap
svn co https://github.com/openwrt/packages/trunk/libs/libcap feeds/packages/libs/libcap
          
