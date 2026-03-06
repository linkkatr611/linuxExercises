#!/bin/bash

cat Property_Tax_Roll.csv \
| grep "MADISON SCHOOLS" \
| cut -d',' -f7 \
| { sum=0; n=0; while read v; do sum=$(($sum + $v)); n=$(($n + 1)); done; echo $(($sum / $n)); }
