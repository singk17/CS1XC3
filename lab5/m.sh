 #!/bin/bash

FILE="$1"
NUMS="1 4 22 37 22906 53757 112591 361940 475713 893766 996637 996639 996652"

echo "Search Value,Linear Search,Binary Search,Fibonacci Search,Notes" > "$FILE"

for arg in $NUMS ; do
    lt=$({ \time -f "%M" ./search 0 $arg ; } 2>&1 | tail -n1)
    bt=$({ \time -f "%M" ./search 1 $arg ; } 2>&1 | tail -n1)
    ft=$({ \time -f "%M" ./search 2 $arg ; } 2>&1 | tail -n1)
    echo "Num: $arg $lt $bt $ft"
    sm=$(printf "%s\n" $lt $bt $ft | sort -n | head -n1)
    no=""
    if [ $lt = $sm ] ; then
        no="Linear"
    elif [ $bt = $sm ] ; then
        no="Binary"
    else
        no="Fibonacci"
    fi
    echo "$arg,$lt,$bt,$ft,$no" >> "$FILE"
done

echo "Done"
