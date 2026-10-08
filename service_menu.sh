#!/bin/bash
# CHoosing many options with the use of the case statements

# case "$variable" in
# 	option) output ;;
# 	option2) output ;;
# 	*) default
# 	exit 1 ;;
# esac

case "$1" in
	start) echo "Starting the lab webserver..." ;;
	stop) echo "Stopping the lab webserver..." ;;
	restart) echo "Restarting the lab webserver..." ;;
	status) echo "Webserver is currently running..." ;;
	*) echo "Usage: $0 {start|stop|restart|status}"
	exit 1 ;;
esac
