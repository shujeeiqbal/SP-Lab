#!/bin/bash
if [ $# = 0 ]
then
	echo "No arguments!"
elif [ $# -gt 6 ]
then
	echo "Too many arguments. Please enter less than 6 arguments "
elif [ $# = 1 ]
then
	echo "**********Printing table**********"
	declare -i a
	declare -i b
	a=$1
	b=1
	while [ $b -le 10 ]
		do
		ans=`expr $a \* $b`
		echo "$a * $b = $ans"
		b="$b + 1"
	done
elif [ $# = 3 ]
then
	echo "**********Printing table**********"
	declare -i a
	declare -i b
	if [ $2 = '-s' ]
	then
	a=$1
	b=$3	
	while [ $b -le 10 ]
		do
		ans=`expr $a \* $b`
		echo "$a * $b = $ans"
		b="$b + 1"
	done
	elif [ $2 = '-e' ]
	then
	a=$1
	b=1
	while [ $b -le $3 ]
		do
		ans=`expr $a \* $b`
		echo "$a * $b = $ans"
		b="$b + 1"
	done
	else 
		echo "Invalid argument !"
	fi
elif [ $# = 2 ]
then
	echo "Third argument missing!"


elif [ $# = 5 ]
then
	if [ $2 = '-s' -a $4 = '-e' ]
	then
	declare -i a
	declare -i b
	a=$1
	b=$3
	while [ $b -le $5 ]
		do
		ans=`expr $a \* $b`
		echo "$a * $b = $ans"
		b="$b + 1"
	done
	else
		echo "Invalid argument"
	fi
elif [ $# = 6 ]
then
	if [ $2 = '-s' -a $4 = '-e' -a $6 = '-r' ]
	then
	declare -i a
	declare -i b
	a=$1
	b=$5
	while [ $b -ge $3 ]
		do
		ans=`expr $a \* $b`
		echo "$a * $b = $ans"
		b="$b - 1"
	done
	else
		echo "Invalid argument"
	fi
fi




