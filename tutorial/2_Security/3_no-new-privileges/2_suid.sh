#!/bin/sh
#suid.sh: Print user information
echo " effective user-ID:"
id -un
echo " real user-ID:"
id -unr
echo " group ID:"
id -gn
