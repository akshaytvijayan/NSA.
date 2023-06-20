if [ $# -eq 0 ]
then 
echo "Syntax error"
echo "Syntax is <$0> <filename1> <filename2> etc.."
exit 1
fi
c=$#
echo "Enter lower limit:"
read l
echo "Enter upper limit:"
read u
while [ $c -gt 0 ]
do 
file=$1
echo "$1 lines $l to $u"
cat $file | head -$u | tail -n +$l
c=`expr $c - 1`
shift
done
exit 0

