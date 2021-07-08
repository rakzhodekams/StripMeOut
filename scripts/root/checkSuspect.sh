#!/bin/bash
directory1="/usr/bin"
directory2="/sbin"
directory3="/bin"
directory4="/usr/local/bin"

# permissions="+4000" # invalid Permission

for file in $( find "directory1" -perm "$permissions")
do
  ls -ltF --author "$file"
done

for file in $( find "directory2" -perm "$permissions")
do
  ls -ltF --author "$file"
done

for file in $( find "directory3" -perm "$permissions")
do
  ls -ltF --author "$file"
done

for file in $( find "directory4" -perm "$permissions")
do
  ls -ltF --author "$file"
done
