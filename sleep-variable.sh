#!/bin/bash

START_TIME=$(date +%s)
sleep 10 &
END_TIME=$(date +%s)
TOTAL_TIME=$(($END_TIMETI-$START_TIME))
echo "Script executed in:"$TOTAL_TIME seconds"
