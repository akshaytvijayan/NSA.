if [ $# -eq 0 ] 
then
echo "syntax is <$0> <word> <file1> <file2> etc"
exit 1
fi
word=$1
shift
count=0
while [ $# -ne 0 ]
do
for wd in `cat $1`
do
if [ $wd=$word ]
then
count=`expr $count + 1`
fi
done
shift
done
echo "Number of occurance of word = $count"
exit 0


OUTPUT

ksb@ksb-H410M-S2-V2:~/scripts$ cat>x
kevin ur super
kevin ur intelligent
kevin ur good looking
^Z
[5]+  Stopped                 cat > x
ksb@ksb-H410M-S2-V2:~/scripts$ cat>y
are we all know malayalam
are ok kevin
^Z
[6]+  Stopped                 cat > y
ksb@ksb-H410M-S2-V2:~/scripts$ sh occur.sh  kevin x  y
number of occurence of words = 4
