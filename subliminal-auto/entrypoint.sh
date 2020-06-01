#!/bin/bash

# Start the run once job.
echo "Docker container has been started"
declare -p | grep -Ev 'BASHOPTS|BASH_VERSINFO|EUID|PPID|SHELLOPTS|UID' > /container.env

# Setup a cron schedule
echo "SHELL=/bin/bash
BASH_ENV=/container.env
* * * * * . $HOME/.profile; /run.sh
# This extra line makes it a valid cron" > crontab.txt

crontab crontab.txt
cron -f
