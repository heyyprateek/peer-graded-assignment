#!/bin/bash

getfilecount() {
FILECOUNT=$(ls -1 | wc -l)
echo "$FILECOUNT"
}

FILECOUNT=$(getfilecount)
MATCH=0
while [ $MATCH -ne 1 ]
do 
    echo "How many files are there in this directory"
    read USERFILECOUNT
    if [[ $USERFILECOUNT -eq $FILECOUNT ]]
    then
        echo -e "\e[1;32mcongratulations! you got it right\e[0m"
        MATCH=1
    elif [[ $USERFILECOUNT -lt $FILECOUNT ]]
    then
        echo -e "\e[1;31mtoo low\e[0m"
    elif [[ $USERFILECOUNT -gt $FILECOUNT ]]
    then
        echo -e "\e[1;31mtoo high\e[0m"
    else
        echo ""
    fi
done