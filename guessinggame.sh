#!/usr/bin/env bash
#File: guessinggame.sh

num_of_files=$(ls | wc -w)
done_flag=0
	
function  game_results {
	diff=$(expr $1 - $2)

	if [[ $diff -eq 0 ]] 
	then
		echo "!!!CONGRATULATIONS!!! YOU GUESSED IT!!!"
		echo ""
		let done_flag=1
	elif [[ $diff -gt 0 ]]
	then
		echo "Sorry, but thats too low"
	elif [[ $diff -lt 0 ]] 
	then
		echo "Sorry, but thats too high"
	fi
}

while [[ $done_flag -eq 0 ]]
do
	echo ""
	echo "How many files do you think are in this current directory? "
	read usr_guess
	game_results $num_of_files $usr_guess
done
