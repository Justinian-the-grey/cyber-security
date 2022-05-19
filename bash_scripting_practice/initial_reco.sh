#!/bin/bash

ip=$1
wordlist=$2

nmap -Pn $ip
gobuster -u $ip -w $wordlist
