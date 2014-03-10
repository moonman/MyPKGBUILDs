#!/bin/sh

INSTDIR=/usr/local/cloudengines

cd $INSTDIR
rm ./bin/hbplug.conf
cp /etc/pogoplug.conf ./hbplug.conf

echo -n "Starting hbplug:             "
ulimit -n 65536
ulimit -c unlimited
nohup $INSTDIR/bin/hbwd $INSTDIR/bin/hbplug > /dev/null 2>&1 &
