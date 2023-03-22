1. Use Random Function (( RANDOM )) to get Single Digit
- echo $((RANDOM%9));


2. Use Random to get Dice Number between 1 to 6
- echo $((RANDOM%7));


3. Add two Random Dice Number and Print the Result
- #! /bin/bash
        dice1=$((RANDOM%6))
        dice2=$((RANDOM%6))
        sum=$((dice1+dice2))
        echo $sum


4. Write a program that reads 5 Random 2 Digit values , then find their sum and the average
- 
#!/bin/bash
RANGE=$((99-11+1));
R1=$(($(($RANDOM%$RANGE))+11));
R2=$(($(($RANDOM%$RANGE))+11));
R3=$(($(($RANDOM%$RANGE))+11));
R4=$(($(($RANDOM%$RANGE))+11));
R5=$(($(($RANDOM%$RANGE))+11));
sum=$(($R1 + $R2 + $R3 + $R4 + $R5));
echo "Sum is: $sum" ;
avg=$(echo $((sum/5)));
echo "Average is: $avg";


5. Write a program that reads 5 Random 3 Digit values and then outputs the minimum
and the maximum value
-
#!/bin/bash
#RANGE=$((999-100+1));
#R1=$(($(($RANDOM%$RANGE))+100));
#R2=$(($(($RANDOM%$RANGE))+100));
#R3=$(($(($RANDOM%$RANGE))+100));
#R4=$(($(($RANDOM%$RANGE))+100));
#R5=$(($(($RANDOM%$RANGE))+100));

echo "Please enter your first number: "
read a
echo "Second number: "
read b
echo "Third number: "
read c
echo "Fourth number: "
read d
echo "Fifth number: "
read e
#if [$a -eq $b -a $b -eq $c -a $d -eq $e]
#then
#	echo "All numbers are equal"
#exit
#fi
if [ $a -gt $b ]
then
	s1=$a;
	s2=$b;
else
	s1=$b;
	s2=$a;	
fi
if [ $s1 -gt $c ]
then
	s3=$s1;
else
	s3=$c;
fi
if [ $s3 -gt $d ]
then
	s4=$s3;
else
	s4=$d;
fi
if [ $s4 -gt $e ]
then
	s5=$s3;
else
	s5=$e;
fi
echo "Largest: $s5";




if [ $a -lt $b ]
then
	s6=$a;
	s7=$b;
else
	s6=$b;
	s7=$a;	
fi
if [ $s6 -lt $c ]
then
	s8=$s6;
else
	s8=$c;
fi
if [ $s8 -lt $d ]
then
	s9=$s8;
else
	s9=$d;
fi
if [ $s9 -lt $e ]
then
	s10=$s9;
else
	s10=$e;
fi
echo "Smallest: $s10";


6. Write a program that takes day and month from the command line and prints true if day of month is between March 20 and June 20, false otherwise.
-
#!/bin/bash -x
read -p " Enter Date:-" date
read -p " Enter Month:-" Month

if (( ($Month <= 6 && $date <= 20) && (($Month >= 3 && $date <= 20) && ($date<31)) ))
then
        echo $Month $date "True";
else

        echo "False";
fi


7. Write a program that takes a year as input and outputs the Year is a Leap Year or not a Leap Year. A Leap Year checks for 4 Digit Number, Divisible by 4 and not 100 unless divisible by 400.
-
echo -n "Enter year (YYYY): "
read y
a = 'expr $y%4'
b = 'expr $y%100'
c = 'expr $y%400'
if [$a -eq 0 -a $b -ne 0 -o $c -eq 0]
then 
echo "$y is leap year"
else
echo "$y is not a leap year"

fi


8. Write a program to simulate a coin flip and print out "Heads" or "Tails" accordingly.
-
#!/bin/bash
FLIP=$(($(($RANDOM%10))%2))
if [ $FLIP -eq 1 ];then
    echo "heads"
else
    echo "tails"
fi


9. Read a single digit number and write the number in word
-
#!/bin/bash

read -p "Enter a single digit number > " num
if [ "$num" = "0" ]; 
then
    echo "You entered zero."
elif [ "$num" = "1" ]; 
then
    echo "You entered one."
elif [ "$num" = "2" ]; 
then
    echo "You entered two."
elif [ "$num" = "3" ]; 
then
    echo "You entered three."
elif [ "$num" = "4" ]; 
then
    echo "You entered four."
elif [ "$num" = "5" ]; 
then
    echo "You entered five."
elif [ "$num" = "6" ]; 
then
    echo "You entered six."
elif [ "$num" = "7" ]; 
then
    echo "You entered seven."
elif [ "$num" = "8" ]; 
then
    echo "You entered eight."
elif [ "$num" = "9" ]; 
then
    echo "You entered nine."
else
    echo "You did not enter a number between 0 and 9."
fi


10. Read a Number and Display the week day (Sunday, Monday,...)
-
#!/bash/bin

read -p "Enter a single digit number from 1 to 7 > " num
if [ $num -eq 1 ]
then
   echo "Sunday"
elif [ $num -eq 2 ]
then
   echo "Monday"
elif [ $num -eq 3 ]
then
   echo "Tuesday"
elif [ $num -eq 4 ]
then
   echo "Wednesday"
elif [ $num -eq 5 ]
then
   echo "Thursday"
elif [ $num -eq 6 ]
then
   echo "Friday"
elif [ $num -eq 7 ]
then
   echo "Saturday"
else
   echo "You didn't enter a single digit number from 1 to 7 "
fi


11. Read a Number 1, 10, 100, 1000, etc and display unit, ten, hundred,...
-
#!/bash/bin

read -p "Enter a number > " num
if [ $num -le 9 ]
then
	echo "unit"
elif [ $num -le 99 ] && [ $num -gt 9 ]
then
	echo "ten"
elif [ $num -le 999 ] && [ $num -gt 99 ]
then 
	echo "hundred"
elif [ $num -le 9999 ] && [ $num -gt 999 ]
then 
	echo "thousand"
elif [ $num -le 99999 ] && [ $num -gt 9999 ]
then 
	echo "lac"
fi


12. Enter 3 Numbers do following arithmetic operation and find the one that is maximum and minimum
1. a + b * c 3. c + a / b
2. a % b + c 4. a * b + c
-
#!/bash/bin

echo "Enter the three numbers";
read a
read b
read c
n1=`expr $a + $b \* $c`
n2=`expr $a % $b + $c`
n3=`expr $c + $a / $b`
n4=`expr $a \* $b + $c`

if((n1>n2)) ; then
 if((n1>n3)); then
   if((n1>n4)); then
     echo "(a + b * c) is a Greatest Number"
   else
     echo "(a * b + c) is a Greatest Number"
   fi
  elif((n3>n4)); then
     echo "(c + a / b) is a Greatest Number"
  else
     echo "(a * b + c) is a Greatest Number"
  fi
elif((n2>n3)); then
  if((n2>n4)); then
     echo "(a % b + c) is a Greatest Number"
  else
     echo "(a * b + c) is a Greatest Number"
  fi
  elif((n3>n4)); then
     echo "(c + a / b) is a Greatest Number"
  else
     echo "(a * b + c) is a Greatest Number"
fi


13. Read a single digit number and write the number in word using Case.
-
#!/bin/bash
echo -n "Enter a number: "
read n
echo "Your number is"
case $n in
        0) echo -n "zero " ;;
        1) echo -n "one " ;;
        2) echo -n "two " ;;
        3) echo -n "three " ;;
        4) echo -n "four " ;;
        5) echo -n "five " ;;
        6) echo -n "six " ;;
        7) echo -n "seven " ;;
        8) echo -n "eight " ;;
        9) echo -n "nine " ;;
	  *) echo -n "Wrong number";;
esac	


14. Read a Number and Display the week day (Sunday, Monday,...)
-#!/bin/bash
echo -n "Enter a number 1 to 7 "
read n
echo "Weekday is"
case $n in
	  1) echo -n "Sunday " ;;
        2) echo -n "Monday " ;;
        3) echo -n "Tuesday " ;;
        4) echo -n "Wednesday " ;;
        5) echo -n "Thursday " ;;
        6) echo -n "Friday " ;;
        7) echo -n "Saturday " ;;
	  *) echo -n "Wrong number";;
esac


15. Read a Number 1, 10, 100, 1000, etc and display unit, ten, hundred,...
- 
#!/bash/bin

read -p "Enter a number > " num

case $num in
	  1) echo -n "Unit " ;;
        10) echo -n "Ten " ;;
        100) echo -n "Hundred " ;;
        1000) echo -n "Thousand " ;;
        10000) echo -n "Lac " ;;
	  *) echo -n "Wrong number";;
esac



