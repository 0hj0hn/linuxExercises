#!/bin/bash

mkdir ./five

for num in {1..5..1}
do
    mkdir ./five/dir$num
    for i in {1..4..1}
    do
	touch file$num
	for idx in {0..$num..1}
	do
	    echo $num > ./five/dir$num/file$num
	done
    done
done
       
