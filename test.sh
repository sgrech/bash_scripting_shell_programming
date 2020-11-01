#!/bin/bash
MY_SHELL="zsh"

if [ "$MY_SHELL" = "bash" ]
then
  echo "You seem to like bash shell"
elif [ "$MY_SHEEL" = "csh" ]
then
  echo "You seem to like csh shell"
else
  echo "You don't seem to like bash or shell"
fi
