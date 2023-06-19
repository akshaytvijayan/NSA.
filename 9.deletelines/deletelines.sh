if [ $# -ne 0 ]
then
echo "syntax error, syntax is <$0>"
exit
fi
echo "Enter the file name: "
read file
term=`tty`
exec < $file
while read line
do
echo $line | grep linux > file2
if [ $? -eq 0 ] 
then    
continue
fi      
echo $line >> file1
done
mv file1 $file
rm file2
exec < $term
