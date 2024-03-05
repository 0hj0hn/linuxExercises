#!/bin/bash

if [$# -lt 1] || [$# -gt 2]; then
    echo "usage: $0 <column> [file.csv]" 1>&2
    exit 0
fi

column=$1

if [ $# -eq 2 ]; then
    file=$2
else
    file="/dev/stdin"
fi
