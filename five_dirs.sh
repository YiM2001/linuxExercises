#!/bin/bash

mkdir five/
cd five
mkdir dir{1..5}

for i in $(ls -1); do
    cd $i
    for j in $(seq 1 4);do
	seq 1 $j > "file$j"
    done
    cd -
done
