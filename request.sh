#!/bin/bash
delimeter=""
data=""
i=1
for user in "$@"
do 
    data="$data$delimeter$user"
    delimeter="&"
done

curl --request POST --data $data http://localhost:3000

echo "Finish curling"