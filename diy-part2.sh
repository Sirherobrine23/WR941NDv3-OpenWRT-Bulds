#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate
#Hostaname
sed -i 's/OpenWrt/tplinklogin/g' package/base-files/files/bin/config_generate
#NTP Server Brazil
sed -i 's/0.openwrt.pool.ntp.org/a.st1.ntp.br/g' package/base-files/files/bin/config_generate
sed -i 's/1.openwrt.pool.ntp.org/b.st1.ntp.br/g' package/base-files/files/bin/config_generate
sed -i 's/2.openwrt.pool.ntp.org/c.st1.ntp.br/g' package/base-files/files/bin/config_generate
sed -i 's/3.openwrt.pool.ntp.org/d.st1.ntp.br/g' package/base-files/files/bin/config_generate
#UTC/TimeZone
sed -i 's/UTC/<-03>3/g' package/base-files/files/bin/config_generate
#OpenWRT Wireless Activated
sed -i 's/set wireless.radio${devidx}.disabled=1/set wireless.radio${devidx}.disabled=0/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i 's/set wireless.default_radio${devidx}.ssid=OpenWrt/set wireless.default_radio${devidx}.ssid=Openwrt-WR941NDv3/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh