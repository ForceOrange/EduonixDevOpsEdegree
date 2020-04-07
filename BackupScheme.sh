#!/bin/bash

# Backup Scheme
# (Make a local backup scheme using rsync. You can try to compress it and schedule it using crontab.)

# usage ./BackupScheme.sh LOCALSOURCE LOCALDESTINATION
# SYNOPSIS
#       Local:  BackupScheme SRC... [DEST]

NOW=$(date +"%S-%M-%H-%d-%m-%Y")
LOCALSOURCE=$1
LOCALDESTINATION=$2
LOCALARCHIVE="temporaryarchive-$NOW.tar.gz"

export LOCALSOURCE
export LOCALDESTINATION

echo "Welcome to BackupScheme. Usage is: ./BackupScheme.sh LOCALSOURCE LOCALDESTINATION"
echo "Local Source directory is : $LOCALSOURCE"
echo "Local Destination directory is : $LOCALDESTINATION"
echo "Backing up data from $LOCALSOURCE to $LOCALDESTINATION, please wait..."

tar czf $LOCALARCHIVE $LOCALSOURCE					# Compress the LOCALSOURCE tar -czvf archiveToCreate.tar.gz file1 file2 file3

rsync $LOCALARCHIVE $2

if [ $? -eq 0 ]
then
  echo "Successfully executed local backup in $LOCALDESTINATION."
  rm -rf $LOCALARCHIVE ###### CLEANUP #########
  exit 0
else
  echo "Problem encountered while backup up. Do verify the usage : ./BackupScheme.sh LOCALSOURCE LOCALDESTINATION" >&2
  rm -rf $LOCALARCHIVE 	###### CLEANUP #########
  exit 1
fi
