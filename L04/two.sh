#!/bin/bash

# Use First Argument As Working Directory
WDIR="$1"
cd "$WDIR"

OFILE="file1.txt"

if [ ! "$3" = "" ] ; then
	OFILE="$3"
fi

if [ "$2" -eq 1 ] ; then
	if  [ ! -f "$OFILE" ] ; then
		echo "$USER" >> "$OFILE"
	fi
elif [ "$2" -eq 2 ] ; then
	if [ -f "$OFILE" ] ; then
		if [ ! -d "./backup" ] ; then
			mkdir backup
		fi
		cp "$OFILE" ./backup
	fi
elif [ "$2" -eq 3 ] ; then
	if [ -f "backup/$OFILE" ] ; then
		cp "backup/$OFILE" .
		rm "backup/$OFILE"
	fi
fi

if [ ! "$4" = "" ] ; then
	echo "$4" > excess.txt
	for arg in "${@:5}" ; do
		echo "$arg" >> excess.txt
	done
fi

echo "Finished"

