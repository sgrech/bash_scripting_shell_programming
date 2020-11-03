#!/bin/bash
function backup_file() {
  if [ -f $1 ]
  then
    # $$ means script PID
    local BACK="/tmp/$(basename ${1}).$(date +%F).$$"
    echo "Backing up $1 to ${BACK}"

    # The exit status of the function will
    # be the exit status of cp command
    cp $1 $BACK
  else
    # The file does not exist
    return 1
  fi
}

backup_file $1 
if [ $? -eq 0 ]
then
  echo "Backup succedded!"
else
  echo "Backup failed!"
  exit 1
fi
