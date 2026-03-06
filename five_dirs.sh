#!/bin/bash

mkdir five

for d in {1..5}
do
    mkdir five/dir$d

    for f in {1..4}
    do
        yes $f | head -n $f > five/dir$d/file$f
    done
done
