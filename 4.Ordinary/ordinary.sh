#4.shell script to rename all ordinary files in a directory with filename.pid of shell

if [ $# -ne 0 ]
then
echo "Syntax is <$0>"
exit 1
fi
for i in * 
do
if [ -f $i ]
then
mv $i $i.$$ $newname
fi
done
exit 
