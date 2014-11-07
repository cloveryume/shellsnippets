#!/bin/bash
LD_SCRIPT=`gcc -print-file-name=libc.so`
LIBC_PATH=`awk '/GROUP/ {match($0, "[^ ]+libc.so\.[^ ]+");print substr($0, RSTART, RLENGTH)}' $LD_SCRIPT`
$LIBC_PATH
