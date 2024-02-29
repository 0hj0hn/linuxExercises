#!/bin/bash

cat Property_Tax_Roll.csv | grep "MADISON SCHOOLS" | cut -d ',' -f 7 | {
    value=0
    num=0
    while read val; do
	value=$((value + val))
	num=$((num + 1))
    done

    echo "$value / $num" | bc
}
