#!/bin/bash

echo -e "\e[1;95m  ___   _   _                                                         _               
 | __| (_) | |  ___     __   ___   _ __    _ __   __ _   _ _   __ _  | |_   ___   _ _ 
 | _|  | | | | / -_)   / _| / _ \ | '  \  | '_ \ / _\` | | '_| / _\` | |  _| / _ \ | '_|
 |_|   |_| |_| \___|   \__| \___/ |_|_|_| | .__/ \__,_| |_|   \__,_|  \__| \___/ |_|  
                                          |_| @gitblanc - Aug 2022\e[0m"
echo ""
SIZE1=$(stat -c%s "$1")
SIZE2=$(stat -c%s "$2")
sudo apt install bc
PERC=$(bc <<< "scale=2; ($SIZE2 - $SIZE1)/$SIZE1 * 100")
echo -e "\e[1;34m$PERC %\e[0m"

if (( $(echo "$PERC > 0.5" | bc -l) )); then
	echo -e "\e[1;31mError, the files differ more than 0.5\e[0m"
	echo -e "\e[1;31mQuitting...\e[0m"
	echo " "
	exit
fi
echo -e "\e[1;32mEverything correct.\e[0m"
exit
