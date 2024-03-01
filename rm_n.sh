#!/bin/bash
function remove_big_file {
    local dir = $1
    local n = $2

    if [[ $# -ne 2 ]]; then
	echo "usage: $0 <dir> <n>" 1>&2
	exit 0
    fi

    find $dir -type f -size +$n[c] -delete
    echo "Files larger than $n bytes in directory $dir have been removed."
}
