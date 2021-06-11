#!/bin/bash

correct_answer=$(ls -p ./ | grep -v / | wc -l)

function subzero {

if [[ $response =~ [0-9] ]]
then
	if [[ $response -gt $correct_answer ]]
	then
		echo "less than that"
	elif [[ $response -lt $correct_answer ]]
	then
		echo "more than that"
	elif [[ $response -eq $correct_answer ]]
	then
		echo "bravo!"
	fi
else
	echo "numbers only please"
fi
}

function scorpion {
echo "How many files exist within this folder?"
read response
}

scorpion

while [[ $response -gt $correct_answer ]] || [[ $response -lt $correct_answer ]]
do
	subzero ; echo "Try again" ; scorpion 
	if [[ $response -eq $correct_answer ]]
	then
		break
	fi
done

echo "bravo!"
