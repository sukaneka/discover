#!/usr/bin/bash

clear
echo
echo "PIng Sweep"
echo
echo
echo "By Lee Baird"
echo
echo "Ping sweep a Class C."
echo
echo "Usage: 192.168.1"
echo

read -p "Class: " class

if [ -z $class ]; then
     echo
     echo "========================================"
     echo
     echo "Invalid choice."
     echo
     echo
     exit
fi

echo
echo "========================================"
echo

for x in `seq 1 254`; do
     ping -c1 $class.$x | grep 'bytes from' | cut -d ' ' -f4 | cut -d ':' -f1 &
done

echo
echo
