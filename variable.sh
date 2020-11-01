#!/bin/bash
MY_SHELL="bash"
SERVER_NAME=$(hostname)
# older syntax
# SERVER_NAME=`hostname`
echo "I like the $MY_SHELL shell."
echo "I am ${MY_SHELL}ing on my keyboard."
echo "You are running this script on $SERVER_NAME"

