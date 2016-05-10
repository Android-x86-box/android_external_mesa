#
# Copyright (C) 2011 Intel Corporation
# Copyright (C) 2010-2011 Chia-I Wu <olvaffe@gmail.com>
# Copyright (C) 2010-2011 LunarG
#
# Permission is hereby granted, free of charge, to any person obtaining a
# copy of this software and associated documentation files (the "Software"),
# to deal in the Software without restriction, including without limitation
# the rights to use, copy, modify, merge, publish, distribute, sublicense,
# and/or sell copies of the Software, and to permit persons to whom the
# Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included
# in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
# DEALINGS IN THE SOFTWARE.
#

LOCAL_PATH := $(call my-dir)

# Import variables libisl_FILES.
include $(LOCAL_PATH)/Makefile.sources

# ---------------------------------------
# Build libisl_gen7
# ---------------------------------------

include $(CLEAR_VARS)

LOCAL_MODULE := libisl_gen7

LOCAL_SRC_FILES := \
	$(libisl_gen7_FILES)

LOCAL_CFLAGS := -DGEN_VERSIONx10=70

LOCAL_C_INCLUDES := \
	$(MESA_TOP)/src/ \
	$(MESA_TOP)/src/intel \
	$(MESA_TOP)/src/mesa/drivers/dri/i965

include $(LOCAL_PATH)/Android.genxml.gen.mk
include $(MESA_COMMON_MK)
include $(BUILD_STATIC_LIBRARY)

# ---------------------------------------
# Build libisl_gen75
# ---------------------------------------

include $(CLEAR_VARS)

LOCAL_MODULE := libisl_gen75

LOCAL_SRC_FILES := \
	$(libisl_gen75_FILES)

LOCAL_CFLAGS := -DGEN_VERSIONx10=75

LOCAL_C_INCLUDES := \
	$(MESA_TOP)/src/ \
	$(MESA_TOP)/src/intel \
	$(MESA_TOP)/src/mesa/drivers/dri/i965

include $(LOCAL_PATH)/Android.genxml.gen.mk
include $(MESA_COMMON_MK)
include $(BUILD_STATIC_LIBRARY)

# ---------------------------------------
# Build libisl_gen8
# ---------------------------------------

include $(CLEAR_VARS)

LOCAL_MODULE := libisl_gen8

LOCAL_SRC_FILES := \
	$(libisl_gen8_FILES)

LOCAL_CFLAGS := -DGEN_VERSIONx10=80

LOCAL_C_INCLUDES := \
	$(MESA_TOP)/src/ \
	$(MESA_TOP)/src/intel \
	$(MESA_TOP)/src/mesa/drivers/dri/i965

include $(LOCAL_PATH)/Android.genxml.gen.mk
include $(MESA_COMMON_MK)
include $(BUILD_STATIC_LIBRARY)

# ---------------------------------------
# Build libisl_gen9
# ---------------------------------------

include $(CLEAR_VARS)

LOCAL_MODULE := libisl_gen9

LOCAL_SRC_FILES := \
	$(libisl_gen9_FILES)

LOCAL_CFLAGS := -DGEN_VERSIONx10=90

LOCAL_C_INCLUDES := \
	$(MESA_TOP)/src/ \
	$(MESA_TOP)/src/intel \
	$(MESA_TOP)/src/mesa/drivers/dri/i965

include $(LOCAL_PATH)/Android.genxml.gen.mk
include $(MESA_COMMON_MK)
include $(BUILD_STATIC_LIBRARY)

# ---------------------------------------
# Build libisl
# ---------------------------------------

include $(CLEAR_VARS)

LOCAL_MODULE := libisl

LOCAL_SRC_FILES := \
	$(libisl_FILES)

LOCAL_C_INCLUDES := \
	$(MESA_TOP)/src/mapi \
	$(MESA_TOP)/src/mesa \
	$(MESA_TOP)/src/mesa/drivers/dri/i965

LOCAL_WHOLE_STATIC_LIBRARIES := \
	libisl_gen7 \
	libisl_gen75 \
	libisl_gen8 \
	libisl_gen9

include $(LOCAL_PATH)/Android.genxml.gen.mk
include $(LOCAL_PATH)/Android.gen.mk
include $(MESA_COMMON_MK)
include $(BUILD_STATIC_LIBRARY)
