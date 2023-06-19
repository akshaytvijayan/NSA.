if [ $# -ne 0 ]
then
echo "Syntax error"
exit
fi
	echo "Enter a file name : "
	read a
	echo "Enter another file name : "
	read b
	cmp $a $b
	if [ $? -eq 0 ]
	then
	rm $b
	echo "Removed duplicate file"
	else
	echo "Duplicate file not exists"
	fi

