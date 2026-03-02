#!/bin/bash

### Special variables ####

$1 $2 ... $N args passed to script
echo "All variables passed to script: $@"
echo "Number of variables passed to script: $#"
echo "Script name: $0"
echo "Present which directory you are in: $PWD"
echo "Who is running this script: $USER"
echo "Home direcory of the user: $Home"
echo "PID of the script: $$"
sleep 100 &
echo "Background process id: $!"
Exit status of previous command: $?