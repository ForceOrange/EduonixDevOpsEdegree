#!/bin/bash

# Backup Scheme
# (Make a local backup scheme using rsync. You can try to compress it and schedule it using crontab.)

# usage ./BackupScheme.sh LOCALSOURCE LOCALDESTINATION

rsync $1 $2
