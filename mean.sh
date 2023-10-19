#!/bin/bash

n=$1
file=$2



cat $file | tail +2 | cut -d ',' -f $n | { sum=$(echo "scale=6; 0.00000" | bc); count=$(echo "scale=6; 0.00000" | bc);  while read num
do
    if [[ ($num -ne 0) ]]; then
	sum=$(echo "scale=6; $sum+$num" | bc)
	count=$(($count+1))
    fi
done
echo $sum
echo $count
mean=$(echo "scale=6; $sum/$count" | bc)
echo $mean
}
