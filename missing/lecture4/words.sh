#!usr/bin/env bash

# combinations that occur
cat '/usr/share/dict/words' | tr '[:upper:]' '[:lower:]' | grep ".*a.*a.*a.*" | grep -v ".*'s" | wc -l

# combinations that doesn't occur
cat '/usr/share/dict/words' | tr '[:upper:]' '[:lower:]' | grep -v ".*a.*a.*a.*" | grep -v ".*'s" | wc -l

