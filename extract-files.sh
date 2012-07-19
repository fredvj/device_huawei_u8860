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

adb pull /system/usr/icu/icudt46l.dat $TARGETDIR

adb pull /system/usr/idc/qwerty.idc $TARGETDIR
adb pull /system/usr/idc/qwerty2.idc $TARGETDIR

adb pull /system/usr/keychars/Generic.kcm $TARGETDIR
adb pull /system/usr/keychars/Virtual.kcm $TARGETDIR
adb pull /system/usr/keychars/qwerty.kcm $TARGETDIR
adb pull /system/usr/keychars/qwerty2.kcm $TARGETDIR

adb pull /system/usr/keylayout/7k_handset.kl $TARGETDIR
adb pull /system/usr/keylayout/AVRCP.kl $TARGETDIR
adb pull /system/usr/keylayout/Generic.kl $TARGETDIR
adb pull /system/usr/keylayout/Vendor_045e_Product_028e.kl $TARGETDIR
adb pull /system/usr/keylayout/Vendor_046d_Product_c216.kl $TARGETDIR
adb pull /system/usr/keylayout/Vendor_046d_Product_c294.kl $TARGETDIR
adb pull /system/usr/keylayout/Vendor_046d_Product_c299.kl $TARGETDIR
adb pull /system/usr/keylayout/Vendor_046d_Product_c532.kl $TARGETDIR
adb pull /system/usr/keylayout/Vendor_054c_Product_0268.kl $TARGETDIR
adb pull /system/usr/keylayout/Vendor_05ac_Product_0239.kl $TARGETDIR
adb pull /system/usr/keylayout/Vendor_22b8_Product_093d.kl $TARGETDIR
adb pull /system/usr/keylayout/msm_tma300_ts.kl $TARGETDIR
adb pull /system/usr/keylayout/qwerty.kl $TARGETDIR
adb pull /system/usr/keylayout/surf_keypad.kl $TARGETDIR
adb pull /system/usr/keylayout/touchscreen-keypad.kl $TARGETDIR

adb pull /system/wifi/bcm_loadecho.sh $TARGETDIR
adb pull /system/wifi/bcm_loadecho_4330.sh $TARGETDIR
adb pull /system/wifi/bcm_loadipf.sh $TARGETDIR
adb pull /system/wifi/bcm_loadipf_4330.sh $TARGETDIR
adb pull /system/wifi/connectap.sh $TARGETDIR
adb pull /system/wifi/connectap_4330.sh $TARGETDIR
adb pull /system/wifi/firmware.bin $TARGETDIR
adb pull /system/wifi/firmware_apsta.bin $TARGETDIR
adb pull /system/wifi/firmware_both.bin $TARGETDIR
adb pull /system/wifi/firmware_test.bin $TARGETDIR
adb pull /system/wifi/fw_4330_b2.bin $TARGETDIR
adb pull /system/wifi/fw_4330_b2_test.bin $TARGETDIR
adb pull /system/wifi/iwconfig $TARGETDIR
adb pull /system/wifi/iwlist $TARGETDIR
adb pull /system/wifi/iwpriv $TARGETDIR
adb pull /system/wifi/nvram.txt $TARGETDIR
adb pull /system/wifi/nvram_4330.txt $TARGETDIR
adb pull /system/wifi/nvram_4330_MSM8255_U8680.txt $TARGETDIR
adb pull /system/wifi/nvram_4330_MSM8255_U8730.txt $TARGETDIR
adb pull /system/wifi/nvram_MSM8255_U8800-PRO.txt $TARGETDIR
adb pull /system/wifi/nvram_MSM8255_U8820.txt $TARGETDIR
adb pull /system/wifi/udp_server $TARGETDIR

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

# All the blobs necessary for u8860

PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/egl.cfg:system/lib/egl/egl.cfg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLES_android.so:system/lib/egl/libGLES_android.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLES_android.so:system/lib/egl/libGLES_android.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so

EOF

