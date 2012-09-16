#!/bin/sh

VENDOR=huawei
DEVICE=u8860

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary

while getopts ":mnh" options
do
  case $options in
    n ) NC=1 ;;
    m ) MC=1 ;;
    h ) echo "Usage: `basename $0` [OPTIONS] "
	echo "  -m  Do not use ADB to extract files"
	echo "      Copy from image mounted on /mnt"
        echo "  -n  No cleanup"
        echo "  -h  Show this help"
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

    if [ "x$MC" != "x1" ];
    then
    	adb pull /system/$FILE $BASE/$FILE
	RC=$?
    else
	cp /mnt/$FILE $BASE/$FILE
	RC=$?
    fi

#    if [ "x$RC" != "x0" ];
#    then
#	echo "$FILE: failed"
#    else
#	echo "$FILE: okay"
#    fi
done

./setup-makefiles.sh
