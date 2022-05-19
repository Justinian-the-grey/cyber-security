#!/bin/bash

echo "Enter your name please mf!"
read name

echo "Enter your age please mf!"
read age

echo "Hello $name, you are $age years old mf!"

richAge=$((($RANDOM % 50 ) + $age))
echo "You will get rich at $richAge"
