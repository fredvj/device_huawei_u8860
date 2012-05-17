#!/bin/bash

PROPS=../../../../vendor/huawei/u8860/proprietary/recovery/

echo "    -------------------- rmt_storage files"

for f in libc.so libcutils.so libfotaagent.so liblog.so libm.so libstdc++.so libz.so linker offmode_charge offmode_check rmt_storage strace
        do cp $PROPS/$f .
done

echo "    -------------------- done."

