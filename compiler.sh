#!/bin/bash
as -o a.o $1
ld -o a a.o -lc -dynamic-linker /lib64/ld-linux-x86-64.so.2