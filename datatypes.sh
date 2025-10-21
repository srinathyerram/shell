#!/bin/bash

NUMBER1=100
NUMBER2=200
NAME=John

SUM=$((NUMBER1 + NUMBER2))
echo  "SUM is: ${SUM}"

#size=4, max index=3
LEADERS=("Alice" "Bob" "Charlie" "Diana")

echo "All Leaders: ${LEADERS[@]}"
echo "First Leader: ${LEADERS[0]}"
echo "Total Leaders: ${#LEADERS[@]}"
echo "Size of first Leader's name: ${#LEADERS[0]}" passed to the script: $#"
echo "fifth leader: ${LEADERS[4]}" # this will be empty as we don't have 5th leader