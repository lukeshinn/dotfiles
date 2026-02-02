#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 '<command>' <iterations>"
    exit 1
fi

COMMAND="$1"
iters="$2"

fails=0
passes=0

for ((i = 1; i <= iters; i++)); do
    echo "Starting Iteration: $i"
    eval $COMMAND
    if [ $? -eq 0 ]; then
        ((passes++))
    else
        ((fails++))
    fi
    echo "End of Iteration: $i"
done

echo -e "\n--------------------"
echo "Total runs: $iters"
echo "Total Failures: $fails"
echo "Total Passes: $passes"
echo "--------------------"
