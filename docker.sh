#!/bin/bash

mem=`cat /proc/meminfo | head -1 | cut -c 15-25`
per_thread=4000000
reserved=16000000
threads=`expr '(' $mem - $reserved + $per_thread - 2 ')' / $per_thread + 1`

cd /app && ./build_linux.sh -j$threads -dsi -lL
