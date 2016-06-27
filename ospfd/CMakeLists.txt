#
# Copyright 2016 Xiaomi Corporation. All rights reserved.
# Use of this source code is governed by a BSD-style
# license that can be found in the LICENSE file.
#
# Authors:    Yu Bo <yubo@xiaomi.com>
#
cmake_minimum_required(VERSION 2.6)


set(SOURCES ospf_abr.c ospf_api.c ospf_apiserver.c ospf_asbr.c ospf_ase.c ospfd.c ospf_dump.c ospf_flood.c ospf_ia.c ospf_interface.c ospf_ism.c ospf_lsa.c ospf_lsdb.c ospf_neighbor.c ospf_network.c ospf_nsm.c ospf_opaque.c ospf_packet.c ospf_route.c ospf_routemap.c ospf_snmp.c ospf_spf.c ospf_te.c ospf_vty.c ospf_zebra.c)

add_library(ospf SHARED ${SOURCES})

ADD_LIBRARY(ospf-static STATIC ${SOURCES})
#target_link_libraries(ospf-static)
set_target_properties(ospf-static PROPERTIES OUTPUT_NAME ospf)

add_executable(ospfd ospf_main.c)
target_link_libraries(ospfd ospf-static zebra-static crypt rt)



