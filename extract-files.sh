#!/bin/sh

VENDOR=huawei
DEVICE=u8860
MP=0

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary

while getopts "m:nh" options
do
  case $options in
    n ) NC=1 ;;
    m ) MP=1
        EXTRACT_DIR="$OPTARG";;
    h ) echo "Usage: `basename $0` [OPTIONS] "
        echo "  -m D    Do not use ADB to extract files"
        echo "          Copy from directory D instead"
        echo "  -n      No cleanup"
        echo "  -h      Show this help"
        exit ;;
    * ) ;;
  esac
done

if [ "x$NC" != "x1" ];
then
    rm -rf $BASE/*
fi

for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi

    if [ "x$MP" = "x0" ];
    then
	adb pull /system/$FILE $BASE/$FILE
	RC=$?
    else
	cp $EXTRACT_DIR/$FILE $BASE/$FILE
	RC=$?
    fi

#    if [ "x$RC" != "x0" ];
#    then
#	echo "$FILE: failed"
#    fi
done

./setup-makefiles.sh
