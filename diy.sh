#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy.sh
# Description: OpenWrt DIY script (After git clone)
#

echo $(cat .config | grep "=y")

set_default(){
    sed -i "s/#define $1 .*/#define $1 ${2@Q}/" trunk/user/shared/defaults.h
    echo "Set Default $1:${2@Q}"
}

#define DEF_LAN_ADDR		"192.168.2.1"
set_default DEF_LAN_ADDR		"192.168.1.1"
#define DEF_LAN_DHCP_BEG	"192.168.2.100"
set_default DEF_LAN_DHCP_BEG	"192.168.1.100"
#define DEF_LAN_DHCP_END	"192.168.2.244"
set_default DEF_LAN_DHCP_END	"192.168.1.244"
#define DEF_LAN_MASK		"255.255.255.0"
set_default DEF_LAN_MASK		"255.255.255.0"

#define DEF_WLAN_2G_CC		"CN"
set_default DEF_WLAN_2G_CC		"AU"
#define DEF_WLAN_5G_CC		"US"
set_default DEF_WLAN_5G_CC		"AU"
#define DEF_WLAN_2G_PSK		"1234567890"
set_default DEF_WLAN_2G_PSK		"1234567890"
#define DEF_WLAN_5G_PSK		"1234567890"
set_default DEF_WLAN_5G_PSK		"1234567890"

#define DEF_ROOT_PASSWORD	"admin"
set_default DEF_ROOT_PASSWORD	"admin"
#define DEF_SMB_WORKGROUP	"WORKGROUP"
set_default DEF_SMB_WORKGROUP	"WORKGROUP"
#define DEF_TIMEZONE		"CST-8"
set_default DEF_TIMEZONE		"CST-8"
#define DEF_NTP_SERVER0		"ntp1.aliyun.com"
set_default DEF_NTP_SERVER0		"ntp1.aliyun.com"
#define DEF_NTP_SERVER1		"time1.cloud.tencent.com"
set_default DEF_NTP_SERVER1		"time1.cloud.tencent.com"