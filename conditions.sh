#!/bin/bash

NUMBER=$1


if [ $NUMBER -lt 100 ]; then
echo "Given number $NUMBER is less than 100"
elif [ $NUMBER -eq 100 ]; then
echo "Given number $NUMBER is equal to 100"
else
echo "Given number $NUMBER is greater than 100"
fi 


# -gt
# eq
# -ne
