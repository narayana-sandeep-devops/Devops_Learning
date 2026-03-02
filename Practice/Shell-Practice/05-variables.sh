#!/bnin/bash

START_TIME=$(date +%s)

echo "Script executed: $START_TIME"

END_TIME=$(date +%s)

echo "Script end time: $END_TIME"

TOTAL_TIME=$(($END_TIME-$START_TIME))

echo "Script Executed in : $TOTAL_TIME seconds"