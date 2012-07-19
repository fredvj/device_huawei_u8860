#!/bin/sh

# Copyright (C) 2012 The Android Open Source Project
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

DEVICE=u8860
MANUFACTURER=huawei
TARGETDIR=../../../vendor/$MANUFACTURER/$DEVICE/proprietary

mkdir -p $TARGETDIR
adb pull /system/cdrom/autorun.iso $TARGETDIR

adb pull /system/etc/dbus.conf $TARGETDIR
adb pull /system/etc/gps.conf $TARGETDIR
adb pull /system/etc/vold.fstab $TARGETDIR

adb pull /system/etc/dhcpcd/dhcpcd.conf $TARGETDIR

adb pull /system/etc/firmware/leia_pfp_470.fw $TARGETDIR
adb pull /system/etc/firmware/leia_pm4_470.fw $TARGETDIR
adb pull /system/etc/firmware/vidc_720p_command_control.fw $TARGETDIR
adb pull /system/etc/firmware/vidc_720p_h263_dec_mc.fw $TARGETDIR
adb pull /system/etc/firmware/vidc_720p_h264_dec_mc.fw $TARGETDIR
adb pull /system/etc/firmware/vidc_720p_h264_enc_mc.fw $TARGETDIR
adb pull /system/etc/firmware/vidc_720p_mp4_dec_mc.fw $TARGETDIR
adb pull /system/etc/firmware/vidc_720p_mp4_enc_mc.fw $TARGETDIR
adb pull /system/etc/firmware/vidc_720p_vc1_dec_mc.fw $TARGETDIR
adb pull /system/etc/firmware/yamato_pfp.fw $TARGETDIR
adb pull /system/etc/firmware/yamato_pm4.fw $TARGETDIR

adb pull /system/etc/wifi/wpa_supplicant.conf $TARGETDIR

adb pull /system/lib/liboemcamera.so $TARGETDIR
adb pull /system/lib/libril-qc-1.so $TARGETDIR
adb pull /system/lib/libril-qc-qmi-1.so $TARGETDIR
adb pull /system/lib/libril-qcril-hook-oem.so $TARGETDIR

adb pull /system/lib/egl/egl.cfg $TARGETDIR
adb pull /system/lib/egl/eglsubAndroid.so $TARGETDIR
adb pull /system/lib/egl/libEGL_adreno200.so $TARGETDIR
adb pull /system/lib/egl/libGLES_android.so $TARGETDIR
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so $TARGETDIR
adb pull /system/lib/egl/libGLESv2_adreno200.so $TARGETDIR
adb pull /system/lib/egl/libq3dtools_adreno200.so $TARGETDIR

adb pull /system/lib/hw/audio.primary.msm7k.so $TARGETDIR
adb pull /system/lib/hw/audio_policy.msm7k.so $TARGETDIR
adb pull /system/lib/hw/camera.msm7k.so $TARGETDIR
adb pull /system/lib/hw/copybit.msm7k.so $TARGETDIR
adb pull /system/lib/hw/gralloc.msm7k.so $TARGETDIR
adb pull /system/lib/hw/hwcomposer.msm7k.so $TARGETDIR
adb pull /system/lib/hw/libbcmfm_if.so $TARGETDIR
adb pull /system/lib/hw/lights.msm7k.so $TARGETDIR

adb pull /system/lib/modules/ansi_cprng.ko $TARGETDIR
adb pull /system/lib/modules/cls_flow.ko $TARGETDIR
adb pull /system/lib/modules/cpaccess.ko $TARGETDIR
adb pull /system/lib/modules/dal_remotetest.ko $TARGETDIR
adb pull /system/lib/modules/dma_test.ko $TARGETDIR
adb pull /system/lib/modules/evbug.ko $TARGETDIR
adb pull /system/lib/modules/gspca_main.ko $TARGETDIR
adb pull /system/lib/modules/librasdioif.ko $TARGETDIR
adb pull /system/lib/modules/mtd_erasepart.ko $TARGETDIR
adb pull /system/lib/modules/mtd_nandecctest.ko $TARGETDIR
adb pull /system/lib/modules/mtd_oobtest.ko $TARGETDIR
adb pull /system/lib/modules/mtd_pagetest.ko $TARGETDIR
adb pull /system/lib/modules/mtd_readtest.ko $TARGETDIR
adb pull /system/lib/modules/mtd_speedtest.ko $TARGETDIR
adb pull /system/lib/modules/mtd_stresstest.ko $TARGETDIR
adb pull /system/lib/modules/mtd_subpagetest.ko $TARGETDIR
adb pull /system/lib/modules/mtd_torturetest.ko $TARGETDIR
adb pull /system/lib/modules/qce.ko $TARGETDIR
adb pull /system/lib/modules/qcedev.ko $TARGETDIR
adb pull /system/lib/modules/qcrypto.ko $TARGETDIR
adb pull /system/lib/modules/reset_modem.ko $TARGETDIR
adb pull /system/lib/modules/sch_dsmark.ko $TARGETDIR
adb pull /system/lib/modules/scsi_wait_scan.ko $TARGETDIR


adb pull /system/lib/libsecril-client.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libsecril-client.so
adb pull /system/vendor/bin/pvrsrvinit ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/pvrsrvinit
adb pull /system/vendor/etc/sirfgps.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/sirfgps.conf
adb pull /system/vendor/firmware/bcm4330.hcd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bcm4330.hcd
adb pull /system/vendor/firmware/ducati-m3.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/ducati-m3.bin
adb pull /system/vendor/firmware/libpn544_fw.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libpn544_fw.so
adb pull /system/vendor/lib/egl/libEGL_POWERVR_SGX540_120.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libEGL_POWERVR_SGX540_120.so
adb pull /system/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libGLESv1_CM_POWERVR_SGX540_120.so
adb pull /system/vendor/lib/egl/libGLESv2_POWERVR_SGX540_120.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libGLESv2_POWERVR_SGX540_120.so
adb pull /system/vendor/lib/hw/gps.omap4.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gps.omap4.so
adb pull /system/vendor/lib/hw/gralloc.omap4.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gralloc.omap4.so
adb pull /system/vendor/lib/libglslcompiler.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libglslcompiler.so
adb pull /system/vendor/lib/libIMGegl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libIMGegl.so
adb pull /system/vendor/lib/libinvensense_mpl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libinvensense_mpl.so
adb pull /system/vendor/lib/libpvr2d.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libpvr2d.so
adb pull /system/vendor/lib/libpvrANDROID_WSEGL.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libpvrANDROID_WSEGL.so
adb pull /system/vendor/lib/libPVRScopeServices.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libPVRScopeServices.so
adb pull /system/vendor/lib/libsec-ril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libsec-ril.so
adb pull /system/vendor/lib/libsrv_init.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libsrv_init.so
adb pull /system/vendor/lib/libsrv_um.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libsrv_um.so
adb pull /system/vendor/lib/libusc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libusc.so

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/device-vendor-blobs.mk
# Copyright (C) 2012 The Android Open Source Project
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

# This file is generated by device/__MANUFACTURER__/__DEVICE__/extract-files.sh - DO NOT EDIT

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES := \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsecril-client.so:obj/lib/libsecril-client.so

# All the blobs necessary for u8860
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsecril-client.so:system/lib/libsecril-client.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bcm4330.hcd:system/vendor/firmware/bcm4330.hcd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libusc.so:system/vendor/lib/libusc.so


EOF

