#!bin/bash

START_TIME=(date +%s)
sleep 10 &
END_TIME=(date +%s)
TOTAL_TIME=$($START_TIME-$END_TIME)
echo "Script executed in:"$TOTAL_TIME seconds"
