#!/bin/bash

if [[ $# -ne 2 ]]; then
    echo 'usage: $0 <dir> <n>' 1>&2
    exit 0
fi

x=$1
y=$2

find $x/ -type f -size +${y}c -delete
