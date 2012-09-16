#!/bin/bash

PROPS=/mnt

echo "    -------------------- rmt_storage files"

# Removed lib/libfotaagent.so, 20120916 fredvj

for f in lib/libc.so lib/libcutils.so lib/liblog.so lib/libm.so lib/libstdc++.so lib/libz.so bin/linker bin/rmt_storage
        do cp $PROPS/$f `basename $f`
done

echo "    -------------------- done."

