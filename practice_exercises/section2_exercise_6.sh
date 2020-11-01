#!/bin/bash
read -p "Enter file or path: " FILE_PATH

if [ -d $FILE_PATH ]
then
  echo "${FILE_PATH} is a directory"
  ls -l $FILE_PATH
elif [ -f $FILE_PATH ]
then
  echo "${FILE_PATH} is a file"
fi
