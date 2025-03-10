#!/bin/bash
# Shell Script for Monitoring Memory Usage
# Usage: ./memory_monitor.sh
# Function to display memory usage
display_memory_usage() {
echo "Current Memory Usage:"
free -h
echo ""
}
# Function to display memory usage in real-time and log it
monitor_memory_usage() {
echo "Monitoring memory usage in real-time. Press [CTRL+C] to stop."
# Log memory usage every 10 seconds into memory_log.txt and display on the terminal
while true; do
  free -h | tee -a memory_log.txt
  echo "Logged memory usage at $(date)" | tee -a memory_log.txt
  sleep 3
done
}
# Displaying options to the user
echo "Dynamic Memory Monitor"
echo "1. Display current memory usage"
echo "2. Monitor memory usage in real-time"
echo "3. Exit"
# Loop until the user chooses to exit
while true; do
read -p "Select an option (1-3): " option
case $option in
1) # Display current memory usage
display_memory_usage
;;
2) # Monitor memory usage in real-time and log to file
monitor_memory_usage
;;
3) # Exit the script
echo "Exiting the memory monitor. Goodbye!"
exit 0
;;
*) # Invalid option
echo "Invalid option. Please select 1-3."
;;
esac
echo "" # Print a newline for better readability
done

