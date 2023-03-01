 #!/bin/bash

function ptime() {
    local str="$1"
    local format="(.*)m(.*)s"
    if [[ "$str" =~ $format ]] ; then
        a=$(echo "scale=8; ${BASH_REMATCH[1]} * 60 + ${BASH_REMATCH[2]}")
        echo 0$(echo "$a" | bc)
    fi
}

FILE="$1"
NUMS="1 4 22 37 22906 53757 112591 361940 475713 893766 996637 996639 996652"

echo "Search Value,Linear Search,Binary Search,Fibonacci Search,Notes" > "$FILE"

for arg in $NUMS ; do
    lt=$(ptime $({ time ./search 0 $arg ; } 2>&1 | grep real | cut -f 2))
    bt=$(ptime $({ time ./search 1 $arg ; } 2>&1 | grep real | cut -f 2))
    ft=$(ptime $({ time ./search 2 $arg ; } 2>&1 | grep real | cut -f 2))
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
