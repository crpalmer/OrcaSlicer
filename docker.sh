#!/bin/bash

mem=`cat /proc/meminfo | head -1 | cut -c 15-25`
per_thread=8000000
threads=`expr '(' $mem + $per_thread - 2 ')' / $per_thread`

cd /app && ./build_linux.sh -j$threads -dsi -lL
