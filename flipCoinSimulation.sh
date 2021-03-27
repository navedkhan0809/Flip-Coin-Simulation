#!/bin/bash -x

i=0
j=0
k=0
count1=0
count2=0

while [ $i -lt 40 ]
do
	toss=$((RANDOM%2))
	HEADS=1

	if [ $toss -eq $HEADS ]
	then
   	j=$(($j+1))
		if [ $j == 21 ]
		then
			a=`echo "You won with HEADS"`
			((count1++))
			y=$k
		fi
	else
   	k=$(($k+1))
		if [ $k == 21 ]
		then
			b=`echo "You won with TAILS"`
			((count2++))
			z=$j
		fi
	fi
i=$(($i + 1))
done

if [ $count1 == $count2 ]
then
	echo "Its tie"
else
	if [ $count1 == 1 ]
	then
		echo $a
		diff1=$((21 - $y))
		echo "You won by $diff1"

	elif [ $count2 == 1 ]
	then
		echo $b
		diff2=$((21 - $z))
		echo "You won by $diff2"
	fi
fi
