#!/bin/bash

timeout=5
i=0

while [ $i -lt $timeout ]
do
    
    if psql -h 127.0.0.1 -U postgres -q -c "\d"; then
        echo "Connection available."
        break
    else
        sleep 1
        i=$[$i+1]
    fi
done
