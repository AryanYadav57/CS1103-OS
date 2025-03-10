
#!/bin/bash
display_memory_usage() {
echo "Current Memory Usage:"
free -h
echo ""
}
monitor_memory_usage() {
echo "Monitoring memory usage in real-time. Press [CTRL+C] to stop."
top -o %MEM
top -o %MEM >> memory_log.txt
sleep 10
}

echo "Dynamic Memory Monitor"
echo "1. Display current memory usage"
echo "2. Monitor memory usage in real-time"
echo "3. Exit"
while true; do
read -p "Select an option (1-3): " option
case $option in
1)
display_memory_usage
;;
2)
monitor_memory_usage
;;
3)
echo "Exiting the memory monitor. Goodbye!"
exit 0
;;
*)
echo "Invalid option. Please select 1-3."
;;
esac
echo ""
done
