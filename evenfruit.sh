#!/bin/bash
#
#
#
#if no argument are supplied then prompt user for input
if [ $# -eq 0 ]
then
    echo -n "Enter starting integer and press [ENTER]: "
    read start #read first input into start variable
    echo -n "Enter ending integer and press [ENTER]:"
read end #read second input into end variable  
    #IF ONLY ONE ARGUMENT IS SUPPLIED THEN PROMPT USER FOR SECOND ARGUMENT
    elif [ $# -eq 1 ]
then
    echo"$0: require 2 arguments,only one is supplied"
    # set first argument specified on command line prompt for second argument
    start= $1
    echo -n
    "Enter second integer and press[ENTER]:"
    #read user response into end
    read end

    # if more than two arguments are supplied then use the first two
elif [ $# -gt 2 ]
then
echo "$0: require 2 arguments only, using first two arguments" 
#set first argument specified on command line
start=$1
#set second argument specified on command lined
end=$2
fi

#if start is greater than end then swapstart with end
if [ $start -gt $end ]
then
arg=$start
start=$end
end=$arg
fi

echo "Using start:$start and End: $end"

#loop from start to end
for ((num=$start;num<=$end;num++))
    {
	if(($num%2==0)) #check if current number is even
    then
	echo "$num" #write even number to the console
	if(($num%7==0)) #chek if even number is divisible by 7
	then
	    echo "${num}:orange"
	fi
	if(($num%11==0)) #check if even number is divisible by 11
	then
	    echo "${num}:banana"
	fi

	if(($num%13==0)) #check if even number is divisble by 13
	then
	    echo "${num}:pear"
	fi

	fi
    }
    echo "what is with this fruit obsession"
    exit 0
