#!/bin/bash

echo "All variables passed to the script: $@" # $@ and $* are same but different when we use it with double quotes 
echo "All variables passed to the script: $*" 
echo "Script name: $0"  # $0 will give the script name currently running 
echo "Current directory: $PWD"
echo "Who is running this: $USER"
echo "Home directory of user: $HOME" 
echo "PID of this script: $$" # $$ will give the PID of current script
sleep 50 &
echo "PID of the last command in background is: $!" # $! will give the PID of last command in background
echo "Total number of arguments passed: $#" # $# will give the total number of arguments