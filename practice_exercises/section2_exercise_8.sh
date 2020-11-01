#!/bin/bash
for FILE_PATH in $@
do
  if [ -d $FILE_PATH ]
  then
    echo "${FILE_PATH} is a directory"
    ls -l $FILE_PATH
  elif [ -f $FILE_PATH ]
  then
    echo "${FILE_PATH} is a file"
  fi
done
