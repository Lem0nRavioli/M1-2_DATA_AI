#!/usr/bin/env python

import sys

# Read input from STDIN
for line in sys.stdin:
    # Split the line into words
    words = line.strip().split()
    for word in words:
        # Emit each word with a count of 1
        print(f"{word}\t1")


# docker cp C:\Users\hiron\Desktop\Code\M1-2_DATA_AI\Code\BigData\map.py bd549d9361dc:root/map.py
# docker cp C:\Users\hiron\Desktop\Code\M1-2_DATA_AI\Code\BigData\reduce.py bd549d9361dc:root/reduce.py