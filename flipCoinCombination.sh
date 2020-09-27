#!/bin/bash

#Flip Coin Combination


echo "Welcome to flip coin combination problem."

#Variables
Head=1;
Tail=2;
countHeads=0;
countTails=0;

#Multiple times of flipping a coin store the Singlet Combination in a Dictionary. 
#Finally determine the	percentage of the Singlet Combination.


#diactionary declaration for siglet

declare -A singletDictionary

for (( i=0; i<=11; i++ ))
do
	# Random for flip coin 
	flipCoin=$((RANDOM%2+1))

	case $flipCoin in

		$Head)
			singletDictionary["Heads"]=$((++countHeads));;
		$Tail)
			singletDictionary["Tails"]=$((++countTails));;
		    *)
			echo  " " ;;
	esac

	((noOfTimes--))

done

#read dictinaery elements.
for pos in ${!singletDictionary[@]}
do
	echo "$pos is: ${singletDictionary[$pos]},"
done


