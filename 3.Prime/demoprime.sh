# 3.Shell script using command line to print the prime number between two numbers .
if [ $# -gt 1 ]
then
 echo "Syntax Error."
exit 1
fi
if [ $# -eq 0 ]
then
echo "Enter starting limit:"
read a
echo "Enter ending limit:"
read b
fi
for x in $(seq $a $b)
do
k=0
for i in $(seq 2 $(expr $x - 1))
do 
        if [ $(expr $x % $i) -eq 0 ]
   then
            k=1
            break
        fi
    done
    if [ $k -eq 0 ]
    then
    echo $x
    fi
done
