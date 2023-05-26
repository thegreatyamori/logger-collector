#!/bin/bash

LOGS_FOLDER="logs"
FILE="$(date +'%Y-%m-%d').log"
LINE=$1

if ! [ -d "$LOGS_FOLDER" ]; then mkdir $LOGS_FOLDER; fi

cd $LOGS_FOLDER;

if ! [ -f "$FILE" ]; then touch $FILE; fi

echo $LINE >> $FILE
