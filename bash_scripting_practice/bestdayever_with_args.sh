#!/bin/bash

name=$1
compliment=$2

user=$(whoami)
working_directory=$(pwd)
date=$(date)

echo "Good morning there $name"
sleep 1
echo "You're looking good $name"
sleep 1
echo "You have the best $compliment $name!!!"
sleep 1
echo "You are $user user, in $working_directory on $date"
