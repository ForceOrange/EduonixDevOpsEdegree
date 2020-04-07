#!/bin/bash

# Backup Scheme
# (Make a local backup scheme using rsync. You can try to compress it and schedule it using crontab.)

# usage ./BackupScheme.sh LOCALSOURCE LOCALDESTINATION

LOCALSOURCE=$1
LOCALDESTINATION=$2

export LOCALSOURCE
export LOCALDESTINATION

rsync $1 $2
