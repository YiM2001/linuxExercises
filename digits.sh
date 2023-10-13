#!/bin/bash

pattern="[0-1]{4}"
total=0

#for i in $(seq 1000 2000);do
#    if [[ $i =~ $pattern ]]; then
#	total=$(($total+$i));
#    fi
#done

init=1000
while [[ $init -lt 2000 ]];
do
    if [[ $init =~ $pattern ]]; then
	total=$(($total+$init));
    fi
    init=$(($init+1))
done

echo $total







