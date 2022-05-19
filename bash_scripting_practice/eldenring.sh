#!/bin/bash

echo "Choose your class:
1 - Warrior,
2 - Priest,
3 - Mage"
read class

case $class in
	1)
		echo "You chose Warrior"
		;;
	2)
		echo "You chose Priest"
		;;
	3)
		echo "You chose Mage"
		;;
esac

sleep 1

# First beast battle
beastTry=$(($RANDOM % 2))

echo "A beast approaches, make your move! Press either 0 or 1"
read playerTry

if [[ $beastTry == $playerTry ]]; then
	echo "You won"
elif [[ $playerTry == "critical" ]]; then
	echo "critical hit"
else
	echo "You lost"
	exit 1
fi

sleep 1

echo "Another beast approaches, make your move! Enter a number from 0 to 9"
read playerTry

margrit=$(($RANDOM % 10))

if [[ $margrit ==  $playerTry || $playerTry == "cheat" ]]; then
	echo "You won! :)"
	if [[ $playerTry == "cheat" ]]; then
		echo "hmmm you cheated"
	fi
else
	echo "You lost! :("
	exit 1
fi
