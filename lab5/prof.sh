NUMS="4 10 17 256"


for arg in $NUMS ; do
    echo "Running" $arg
    gcc -fprofile-arcs -ftest-coverage -o profactors factors.c
    ./profactors 0 $arg
    gcov factors.c > "factors_0_$arg.gov"
    cat factors.c.gcov >> "factors_0_$arg.gov"
    gcc -fprofile-arcs -ftest-coverage -o profactors factors.c
    ./profactors 1 $arg
    gcov factors.c > "factors_1_$arg.gov"
    cat factors.c.gcov >> "factors_1_$arg.gov"
done
