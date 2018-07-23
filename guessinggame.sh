#!/usr/bin/env bash
#File: guessinggame.sh

actual=$(ls | wc -w)
flag=0
	
function decision {
	diff=$(expr $actual - $guess)

	if [[ $diff -eq 0 ]] 
	then
		echo "!!!CONGRATULATIONS!!! YOU GUESSED IT BUDDDY!!!"
		echo ""
		let flag=1
	elif [[ $diff -gt 0 ]]
	then
		echo "Sorry, but thats too low"
	elif [[ $diff -lt 0 ]] 
	then
		echo "Sorry, but thats too high"
	fi
}

while [[ $flag -eq 0 ]]
do
	echo ""
	echo "Guess how many files are in the current directory? "
	read guess
	decision $actual $guess
done
