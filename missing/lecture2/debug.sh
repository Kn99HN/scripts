#!bin/usr/env bash
i=0
while [[ "$?" != 1 ]]
do
  i=$(( $i + 1 ))
  "./error.sh" &> out.txt
done

echo "It took $i runs for script to fail"
cat out.txt

