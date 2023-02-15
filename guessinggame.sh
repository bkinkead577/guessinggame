#!/usr/bin/env bash
#  guessing game
# Brian Kinkead
# 2/15/2023

#file_lines=$(cat guessinggame.sh | wc -l)
num_files=$( ls | wc -l)
echo $num_files

count=1

echo "Enter number of files in current directory:"
read userguess

while [[ $userguess -ne $num_files ]]
do
	if [[ $userguess -lt $num_files ]]
	then
	  echo "Sorry, guess is too low. Try again..."
	else
	   echo "You're guess is too high. Try again..."
	fi
	let count=$count+1
	read userguess
done

echo "Correct! You guessed: $userguess in $count try(s)!"



