Attempt 1

#!/bin/bash

#Variable for count
count=0
#Variable for total numeric value
total=0


#To count the numbers less than ten as well as their sum with command line inputs
for  number in $@
do
if [ $number -lt 10 ]; then
    ((count++))
    total=$((total+number))
fi
done

    echo "The numbers that are less then ten are: "$count
    echo "The total value of all numbers less than ten are: "$total





Attempt 2

#!/bin/bash

#Variable for count
    count=0

#Variable for total numeric value
    total=0
#Youtube helped me figure out how to do the intro to this part (ie: terminal/exec?), however a after further examination a read and pipe to PART 1 would be simpler
#To enter file name to read from, then count the numbers less than ten as well as their sum
    echo "Enter a file name for part 6.2:\c"
read fname
    if [ -z "$fname" ]
 then
    exit
fi

terminal='tty'

exec < $fname

while read line
do

if [ $line -lt 10 ];
 then
        ((count++))
        total=$((total+line))
fi


 done

        echo "The numbers that are less then ten are: "$count
        echo "The total value of all numbers less than ten are: "$total





Attempt 3
#!/bin/bash

#To read a file name, then awk command any lines where the first column contains a negative number greater than 10 and the second column contains a number less than 10, where cat will print to screen.
    echo "Enter a file name for part 6.3"
read fname
cat $fname | awk '{ if(($1>10) && ($2<10)){print}}'
exit
