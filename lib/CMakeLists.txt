#
# Copyright 2016 Xiaomi Corporation. All rights reserved.
# Use of this source code is governed by a BSD-style
# license that can be found in the LICENSE file.
#
# Authors:    Yu Bo <yubo@xiaomi.com>
#
cmake_minimum_required(VERSION 2.6)


set(SOURCES network.c pid_output.c getopt.c getopt1.c daemon.c checksum.c vector.c linklist.c vty.c command.c sockunion.c prefix.c thread.c if.c memory.c buffer.c table.c hash.c filter.c routemap.c distribute.c stream.c str.c log.c plist.c zclient.c sockopt.c smux.c agentx.c snmp.c md5.c if_rmap.c keychain.c privs.c sigevent.c pqueue.c jhash.c memtypes.c workqueue.c)

add_library(zebra SHARED ${SOURCES})
#target_link_libraries(zebra ev)

ADD_LIBRARY(zebra-static STATIC ${SOURCES})
#target_link_libraries(zebra-static ev)
set_target_properties(zebra-static PROPERTIES OUTPUT_NAME zebra)
