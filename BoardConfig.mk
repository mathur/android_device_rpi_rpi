# Copyright (C) 2013 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

TARGET_GLOBAL_CFLAGS += -mfpu=vfp -mfloat-abi=softfp -Os
TARGET_GLOBAL_CPPFLAGS += -mfpu=vfp -mfloat-abi=softfp -Os

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv6-vfp

TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_ARCH_VARIANT_CPU := arm1176jzf-s

TARGET_NO_KERNEL := true

BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true
BOARD_HAVE_BLUETOOTH := false
USE_CAMERA_STUB := true

JS_ENGINE := v8
HTTP := chrome
WITH_JIT := true
ENABLE_JSC_JIT := true

