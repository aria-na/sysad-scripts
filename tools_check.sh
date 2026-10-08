#!/bin/bash
# confirm the installed tools our scripts depends on

# function(){
#	content
# }

print_line(){
	echo "-----------------------------------------"
}

check_tool(){
	local_tool="$1"
	if command -v "$tool" &> /dev/null; then
		echo "[ OK ] $tool"
	else
		echo "[ MISSING ] $tool"
	fi
}

print_line
echo "Toolkit dependency check!"
print_line

for tool in bash tar gzip labtool; do
	check_tool "$tool"
done

print_line

