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


#Loop to create a Doublet Combination. and
#Store the doublet combination as well as the percentage.

declare -A doubletDictionary

for ((j=1;j<=5;j++))
do
        flip=$((RANDOM%4))
        case $flip in
                0) x=${doubletDictionary["HH"]}
		   doubletDictionary["HH"]=$((++x))
                	;;
                1)  x=${doubletDictionary["HT"]}
                   doubletDictionary["HT"]=$((++x))
                        ;;
		2) x=${doubletDictionary["TH"]}
                   doubletDictionry["TH"]=$((++x))
                        ;;
                3) x=${doubletDictionary["TT"]}
                   doubletDictionary["TT"]=$((++x))
                        ;;
        esac
done
for index in ${!doubletDictionary[@]}
do
        echo "$index: ${doubletDictionary[$index]},"
done


#triplet combintion

for ((k=1;k<=5;k++))
do
        flip=$((RANDOM%8))
        case $flip in
                0) y=${Triplet["HHH"]}
                   Triplet["HHH"]=$((++y))
                        ;;
		1) y=${Triplet["HHT"]}
                   Triplet["HHT"]=$((++y))
                        ;;
		2) y=${Triplet["HTH"]}
                   Triplet["HTH"]=$((++y))
                        ;;
		3) y=${Triplet["THH"]}
                   Triplet["THH"]=$((++y))
                        ;;
		4) y=${Triplet["THT"]}
                   Triplet["THT"]=$((++y))
                        ;;
		5) y=${Triplet["TTH"]}
                   Triplet["TTH"]=$((++y))
                        ;;
		6) y=${Triplet["HTT"]}
                   Triplet["HTT"]=$((++y))
                        ;;
		7) y=${Triplet["TTT"]}
                   Triplet["TTT"]=$((++y))
                        ;;

        esac
done
for index in ${!Triplet[@]}
do
	echo "$index: ${Triplet[$index]},"
done


