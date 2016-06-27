#
# Copyright 2016 Xiaomi Corporation. All rights reserved.
# Use of this source code is governed by a BSD-style
# license that can be found in the LICENSE file.
#
# Authors:    Yu Bo <yubo@xiaomi.com>
#
cmake_minimum_required(VERSION 2.6)


set(SOURCES zserv.c main.c interface.c connected.c zebra_rib.c zebra_routemap.c redistribute.c debug.c rtadv.c zebra_snmp.c zebra_vty.c irdp_main.c irdp_interface.c irdp_packet.c router-id.c zebra_fpm.c zebra_fpm_netlink.c ioctl.c ipforward_proc.c if_netlink.c rt_netlink.c rtread_netlink.c)

add_executable(zebra-main ${SOURCES})
target_link_libraries(zebra-main zebra-static crypt rt)
set_target_properties(zebra-main PROPERTIES OUTPUT_NAME zebra)
