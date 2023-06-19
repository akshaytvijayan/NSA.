if [ $# -ne 0 ]
then
echo "Syntax error"
exit
fi
echo Enter file name
read fname
ter=`tty`
exec < $fname
i=0
j=0
while read line
do 
i=`expr $i + 1`
for c in $line
do
j=`expr $j + 1`
done
done
echo "No. of lines in $fname : $i"
echo "No. of words in $fname : $j"
exec < $ter
