#!/bin/bash

LIBPATH="."
LIBNM="Lab6Part5"

gcc -L$LIBPATH -Wl,-rpath=$LIBPATH -Wall -o test top.c -l$LIBNM
