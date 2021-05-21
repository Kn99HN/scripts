#!usr/bin/env bash
cat table | grep -E "(</td>.*)" | sed -E "s/<.*//g" | awk '((NR-3)%21==0) || ((NR-5)%21==0)' | awk '{if (NR%2==0) {a+=$1}} {if (NR%2==1) {b+=$1}}END{print a}END{print b}' | awk '{if (NR==1) {a=$1}} {if (NR==2) {b=$1}} {c=b-a}END{print c}' 
