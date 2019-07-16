#!/bin/bash
for i in 20 25 30
do
	for j in 2 4 8 16 32 64 128 256 512 1024 2048
	do
		 ./req.sh $j $i
	done
done
