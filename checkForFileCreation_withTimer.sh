#!/bin/sh

checkForResource()
{
  file="/tmp/fileToCheck"
  timeout=4  # wait timeout
  SECONDS=0  # built-in counter

  until [ -f "$file" ] || (( SECONDS >= timeout ))
  do
    sleep 0.5
  done
}

checkForResource