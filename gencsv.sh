#!/bin/bash
count=1
while [ $count -lt 11 ]
do
random=$((RANDOM%1000000))
echo "$count, $random" >> inputFile
count=$(($count+1))
done
