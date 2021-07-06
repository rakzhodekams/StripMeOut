#!/bin/bash
# Run as root
LOG_DIR=/var/log
ROOT_UID=0 # Only users with $UID 0
LINES=50
E_XCD=86
E_NOTROOT=87

if [ "$UID" -ne "$ROOT_UID" ]
then
  echo "Must be root to run this script."
  exit $E_NOTROOT
fi

if [ -n "$1" ]
then
  lines=$1
else 
  lines=$LINES
fi

cd $LOG_DIR

if [ `pwd` != "$LOG_DIR" ]
then
  echo "Cannot cd into $LOG_DIR."
  exit $E_XCD
fi

if [ "$UID" = 0 ]
then
  cat /dev/null > messages
  cat /dev/null > alternatives.log
  cat /dev/null > btmp
  cat /dev/null > daemon.log
  cat /dev/null > debug
  cat /dev/null > dpkg.log
  cat /dev/null > faillog
  cat /dev/null > kern.log
  cat /dev/null > lastlog 
  cat /dev/null > wtmp
  cat /dev/null > syslog
  echo "All Logs Cleared."
  cd ~
  exit
fi

