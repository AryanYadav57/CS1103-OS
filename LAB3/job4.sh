#!/bin/bash
# Basic Shell Script for Job Scheduling
# Usage: ./job_scheduler.sh <delay_in_seconds> "command1" "command2" ...
# Check if sufficient arguments are provided
if [ "$#" -lt 2 ]; then
echo "Usage: $0 <delay_in_seconds> \"command1\" \"command2\" ..."
exit 1
fi
echo "The number of arguments given is : $#"
if [ "$#" -gt 4 ]; then
    echo "Too many commands. The program can only handle 3 commands. Exiting..."
    exit 1
fi
# Get the delay from the first argument
delay=$1
shift # Remove the first argument so we can loop over commands
# Execute each command with the specified delay
for command in "$@"; do
echo "print: $command"
echo "Waiting for $delay seconds..."
sleep "$delay" # Delay before executing the next command
done
echo "All commands executed."
