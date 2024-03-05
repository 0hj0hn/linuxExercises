#!/bin/bash

sum=$1

for val in {1000..2000}; do

    if [[ $val =~ [0-1]{4} ]]; then
	sum=$(($sum + $val))
    fi
        
done

echo $sum
