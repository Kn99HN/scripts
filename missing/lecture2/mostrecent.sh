#!bin/usr/env bash
ls $1 -lt | awk "NR==2"
