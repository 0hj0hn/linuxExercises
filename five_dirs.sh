#!/bin/bash

mkdir ./five

for num in {1..5..1} #five directories within five/
do
	mkdir ./five/dir$num  # initialize directory
	for i in {1..4..1} # within that directory, initialize 4 files
	do
		touch ./five/dir$num/file$i # initialize file. contents of file[n] = n, repeated n times
		printf "%0.s$i\n" $(seq $i) >> ./five/dir$num/file$i

	done
done
       
