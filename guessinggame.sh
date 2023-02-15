#!/usr/bin/env bash
#  guessing game
# Brian Kinkead
# 2/15/2023

file_lines=$(cat guessinggame.sh | wc -l)
echo $file_lines

count=1

echo "Enter number of lines in guessinggame.sh"
read userguess

while [[ $userguess -ne $file_lines ]]
do
	if [[ $userguess -lt $file_lines ]]
	then
	  echo "Sorry, guess is too low. Try again..."
	else
	   echo "You're guess is too high. Try again..."
	fi
	let count=$count+1
	read userguess
done

echo "Correct! You guessed: $userguess in $count trie(s)!"



