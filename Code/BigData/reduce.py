#!/usr/bin/env python
import sys
from collections import defaultdict

# Initialize a dictionary to store word counts
word_counts = defaultdict(int)

# Read input from STDIN
for line in sys.stdin:
    word, count = line.strip().split("\t")
    # Accumulate word counts
    word_counts[word] += int(count)

# Emit the final word counts
for word, count in word_counts.items():
    print(f"{word}\t{count}")