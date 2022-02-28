#!/bin/bash
#Purpose: Function example. Taking Backup of Particular File
#Version:1.0
#Created Date: Sat May 26 00:27:50 IST 2018
#Modified Date:
#WebSite: https://arkit.co.in
#Author: xin.yu
#OS: macOS
# START #
function takebackup (){
        if [ -f $1 ]
        then
                BACKUP="/Users/xin.yu/shell_script/$(basename ${1}).$(date +%F).$$"
                echo "Backing up $1 to ${BACKUP}"
                touch $BACKUP
                cp $1 $BACKUP
        fi
}

takebackup /etc/hosts
if [ $? -eq 0 ]
then
        echo "BAckup Success"
else
        echo "BACKUP Failed!"
fi
# END #
