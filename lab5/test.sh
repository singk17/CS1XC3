GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

# Part 3 Files
if [[ -f factors_0_40.txt && -f factors_0_79.txt && -f factors_0_240.txt && -f factors_0_300.txt && -f factors_0_999.txt && -f factors_0_4000.txt && -f factors_1_40.txt && -f factors_1_79.txt && -f factors_1_240.txt && -f factors_1_300.txt && -f factors_1_999.txt && -f factors_1_4000.txt ]]; then
    echo -e "${GREEN}Files for part 3 are present. +1 points${NC}"
else
    echo -e "${RED}Files for part 3 are not present. 0 points${NC}"
fi

echo ""
cat part3.txt
echo ""

# Part 4 Files
if [[ (-f factors_0_4.c.gcov || -f factors_0_4.gcov) && (-f factors_0_10.c.gcov || -f factors_0_10.gcov) && (-f factors_0_17.c.gcov || -f factors_0_17.gcov) && (-f factors_0_256.c.gcov || -f factors_0_256.gcov) && (-f factors_1_4.c.gcov || -f factors_1_4.gcov) && (-f factors_1_10.c.gcov || -f factors_1_10.gcov) && (-f factors_1_17.c.gcov || -f factors_1_17.gcov) && (-f factors_1_256.c.gcov || -f factors_1_256.gcov) ]]; then
    echo -e "${GREEN}Files for part 4 are present. +1 points${NC}"
else
    echo -e "${RED}Files for part 4 are not present. 0 points${NC}"
fi

echo ""
cat part4.txt
