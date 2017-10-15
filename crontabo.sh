#!/bin/sh
#Crontabo 0.0001 - A punny place
PATH=/bin:/sbin:/usr/bin:/usr/sbin
if [ $1"x" != "x" ]; then
  if [ $1"x" != `whoami`"x" ]; then
    su -u $1 -c "crontab -e"
  else
    crontab -e
  fi
else
  crontab -e
fi
