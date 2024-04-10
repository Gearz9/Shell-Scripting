#!/bin/bash

# monitoring the free space disk

FU=$(df -H | egrep -v "Filesystem|tmpfs|none|snapfuse" | grep "C:" | awk '{print $5}' | tr -d %)

To="tusharmaurya43@gmail.com"
if [[ $FU -ge 50 ]]
then 
	echo "More than 50% disk used \n  Current Usage: $FU % " | mail -s "DISK SPACE ALERT!" $TO
else
	echo"Less than 50% disk is used"
fi

	