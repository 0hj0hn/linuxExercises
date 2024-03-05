#!/bin/bash

cat Property_Tax_Roll.csv | grep "MADISON SCHOOLS" | cut -d ',' -f 7 | {
    sum_value=0
    num=0
    while read val; do
	sum_value=$((sum_value + val))
	num=$((num + 1))
    done

    echo "$sum_value / $num" | bc
}
