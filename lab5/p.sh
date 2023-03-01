#!/bin/bash

NUMS="40 79 240 300 999 4000"

for arg in $NUMS ; do
    ./factors 0 $arg
    gprof factors gmon.out > "factors_0_$arg.txt"
    ./factors 1 $arg
    gprof factors gmon.out > "factors_1_$arg.txt"
done
