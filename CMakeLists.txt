#
# Copyright 2016 Xiaomi Corporation. All rights reserved.
# Use of this source code is governed by a BSD-style
# license that can be found in the LICENSE file.
#
# Authors:    Yu Bo <yubo@xiaomi.com>
#
cmake_minimum_required(VERSION 2.6)

add_definitions(-I${CMAKE_CURRENT_SOURCE_DIR} -I${CMAKE_CURRENT_SOURCE_DIR}/zebra -I${CMAKE_CURRENT_SOURCE_DIR}/zebra -I${CMAKE_CURRENT_SOURCE_DIR}/lib)

add_definitions(-DHAVE_CONFIG_H -DSYSCONFDIR="/usr/local/etc/" -DMULTIPATH_NUM=1 -fno-omit-frame-pointer -std=gnu99 -Wall -Wsign-compare -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Wmissing-prototypes -Wmissing-declarations -Wchar-subscripts -Wcast-qual -Wno-unused-result -Wno-cast-qual -fPIC)

if(DEBUG)
	add_definitions(-DDEBUG -g -O0)
	set(CMAKE_EXE_LINKER_FLAGS "-rdynamic")
	set(CMAKE_BUILD_TYPE "Debug")
else(DEBUG)
	add_definitions(-O2)
	set(CMAKE_BUILD_TYPE "Release")
	set(BUILD_STRIP true)
endif(DEBUG)

#add_definitions(-I${CMAKE_CURRENT_SOURCE_DIR}/lib/jsonrpc) 
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
set(CMAKE_INSTALL_PREFIX /usr)

#if(BUILD_STRIP)
#	add_custom_command(TARGET dpvs POST_BUILD COMMAND strip -s  ${EXECUTABLE_OUTPUT_PATH}/dpvs)
#endif(BUILD_STRIP)

add_subdirectory(lib)
add_subdirectory(zebra)
add_subdirectory(ospfd)
