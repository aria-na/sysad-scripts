#!/bin/bash
# exit_status_demo.sh - exit status, && and || demonstration

# $? <- exit status is stored in this variable
# 0 <- means exit status is a success
# !0 <- means exit status is failure

# ls /etc > /dev/null ; echo $? <- error code is 0 meaning it's a success
# ls /random_folder ; echo $? <- error code is 2 meaning failure

# && <- this runs the next command if previous is a success
# || <- this runs the next command if previous is a failure

ls /etc > /dev/null && echo "this folder exists"
ls /random_folder || echo "this folder does not exists"
