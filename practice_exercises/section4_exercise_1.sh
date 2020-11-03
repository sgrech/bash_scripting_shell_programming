#!/bin/bash
function file_count() {
  local COUNT="$(ls $1 -Ap | grep -v / | wc -l)"
  echo "There are $COUNT files in the $1 directory"
}

file_count ./
