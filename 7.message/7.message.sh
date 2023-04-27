#7.shell script to display message "Good Morning,Good Afternoon,Good evening and Good Night" according to system time
if [ $# -gt 1 ]
then
 echo "Syntax Error."
exit 1
fi
echo "\n"
hour=`date +%H`
if [ $hour -lt 12 ]
then
echo "Good Morning World \n"
elif [ $hour -le 16 ]
then
echo "Good Afternoon World \n"
elif [ $hour -le 20 ]
then
echo "Good Evening World \n"
else
echo "Good Night World \n"
fi


