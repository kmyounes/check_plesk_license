#!/bin/bash

NAGIOS_RETURN_OK = 0
NAGIOS_RETURN_WARNING = 1
NAGIOS_RETURN_CRITICAL = 2
NAGIOS_RETURN_UNKNOWN = 3


DATE_LIM = $(plesk bin keyinfo -l | grep lim_date | awk -F ':' '{print $2}')
DATE = $(date +'%Y%m%d')
DATE_LIM = $(date -d $DATE_LIM +"%Y%m%d") 
DIFF = $(($DATE_LIM-$DATE))


ALERT = $1


if [ $DIFF -le $ALERT ] ; then  echo "Hadek Houwa" ;  exit $NAGIOS_RETURN_CRITICAL  ; else echo "Mazel" ;exit $NAGIOS_RETURN_OK ; fi ;







