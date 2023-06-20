# to reverse a file
#set -xv
if [ $# -ne 1 ]
then
echo "syntax is <filename>"
exit 1
fi
cp $1 file
line=`cat file | wc -l`
rm rfile
while [ $line -ge 1 ]
do
tail -n 1 file  >> rfile
line=`expr $line - 1`
head -n $line  file > temp 
mv temp file
done
cat rfile
exit 0 
