if [ $# -eq 0 ]
then 
echo "Enter the number:"
read no
else
no=$1
fi
 i=1
while [ $i -le 20 ]
do
echo "$i x $no = `expr $i \* $no`"
i=`expr $i + 1`
done
