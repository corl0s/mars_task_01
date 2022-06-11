#!/bin/bash
echo -n "A B C D"
echo
for ((i = 0 ; i < 2 ; i++)); do
    for ((j = 0 ; j < 2 ; j++)); do
        for ((k = 0 ; k < 2 ; k++)); do
            for ((l = 0 ; l < 2 ; l++)); do
                echo -n $i" "$j" "$k" "$l" truth value:"$(($i && $j))||$(($k && $l))
                echo 
            done
        done
    done
done