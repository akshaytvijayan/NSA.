if [ $# -ne 2 ]
then 
echo "Syntax error <$0> <sorce file> <destination file>"
exit 1
fi
if [ ! -f $1 ]
then
echo " $1 not exists or it is not an ordinary file"
exit 2
fi
if [ ! -r $1 ]
then
echo " $1 is not readable"
exit 5
fi
if [ -f $2 ]
then 
echo "Target file exists.Do you want to Overwrite(y/n)"
read ans
if [ $ans = "n" ]
then 
exit 3
fi
if [ ! -w $2 ]
then
echo "$2 not writable"
exit 4
fi
fi
cp $1 $2
echo "File successfully copied"
exit 0	
