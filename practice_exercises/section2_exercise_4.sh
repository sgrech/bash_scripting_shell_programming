#!/bin/bash
TEST_FILE=/etc/shadow
if [ -e $TEST_FILE ]
then
  echo "Shadow passwords are enabled"
fi

if [ -w $TEST_FILE ]
then
  echo "You have permissions to edit $TEST_FILE"
else
  echo "You do NOT have permissions to edit $TEST_FILE"
fi

