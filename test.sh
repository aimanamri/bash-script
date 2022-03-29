#!/bin/bash
Year=`date +%Y`
Month=`date +%m`
Day=`date +%d`
Hour=`date +%H`
Minute=`date +%M`
Second=`date +%S`
echo `date`
echo "Current Date is: $Day-$Month-$Year"
echo "Current Time is: $Hour:$Minute:$Second"

echo "Wait for 5 seconds"
sleep 5
echo "Completed"

number=$(( $RANDOM % 100 + 1 ))

echo "Guess a number between 1 and 100"

guess=0

while [ "0$guess" -ne $number ] ; do
        read guess
        [ "0$guess" -lt $number ] && echo "Too low"
        [ "0$guess" -gt $number ] && echo "Too high"
done

echo "That's right!"
exit 0
