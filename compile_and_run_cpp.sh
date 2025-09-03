#!/bin/bash -e
set -e  # Exit on any error

# build.sh - Simple C project build script
#
# Why this is better than running make directly or a basic shell script:
#
# 1. One command does everything: build and run in sequence
# 2. Error handling: Won't try to run the program if compilation fails
# 3. Convenience: Type "./build.sh" instead of "make && ./program"
# 4. Easy to modify: Can easily change program name or add flags in one place
# 5. Consistency: Everyone on the team uses the same build+run process

# Run make, you can set params here
make

# Run program
./program input.txt