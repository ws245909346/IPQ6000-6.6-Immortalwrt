#!/bin/bash

if [[ $WRT_REPO == *"lede"* ]]; then
	sed -i "/#src/d" ./wrt/feeds.conf.default
	sed -i "s|\(src-git luci\).*|\1 https://github.com/coolsnowwolf/luci.git;openwrt-23.05|g" ./wrt/feeds.conf.default
	sed -i '$a src-git lucky https://github.com/sirpdboy/luci-app-lucky' ./wrt/feeds.conf.default 

	echo "$WRT_REPO patch has been installed!"
fi
