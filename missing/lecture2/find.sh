#!bin/usr/env bash

find . -name '*.html' -print0 | xargs -0 tar -a -cf html.zip
