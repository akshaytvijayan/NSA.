if [ $# -ne 0 ]
then
echo "Syntax Error."
exit
fi

echo "Enter a file name :: "
read a
echo "Enter another file name :: "
read b

cmp $a $b >/dev/null

if [ $? -eq 0 ]
then
rm $b
echo "Removed duplicate file"
else
echo "Not a duplicate file"
fi
