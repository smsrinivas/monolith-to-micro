#!/bin/bash

# Parallel Connection Simulator
# ($1) 1st parameter = website
# ($2) 2nd parameter = number of simultaneous requests

initial_time=$(date +%s)

for ((i=1; i<=$2; i++))
do
  curl -s -o /dev/null $1 && echo "done $i" &
done

wait

final_time=$(date +%s)
time_elapsed=$(($final_time-$initial_time))

echo $2 "requests processed in" $time_elapsed "s"
