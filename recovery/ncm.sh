#!/sbin/sh
#
# Shell script to determine if recovery has been started in charge mode
# Copyright (C) 2012, fredvj
#

FILENAME=/proc/app_info
LOGFILE=/cache/ncm.log

# The line after "charge_flag:" will be "1" if started for charge mode

cat ${FILENAME} | grep -A1 "charge_flag:" | grep -q "1"
rc=$?

# If we got a match, just exit

if [ $rc == 0 ] ; then
 echo "Charge mode detected ... will not start recovery" > ${LOGFILE}
 exit 0
fi

# Not charge mode - it is okay to start recovery

echo "Recovery mode detected ... starting recovery" > ${LOGFILE}
/sbin/recovery

