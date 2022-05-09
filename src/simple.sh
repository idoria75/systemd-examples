#!/bin/bash

iter=0;

while [ $iter -lt 10 ]
do
    result=$(systemctl status simple.service);
    echo $result # &> /var/log/systemd-examples/simple-service.log
    iter=$(( $iter + 1 ));
    echo $iter;
    sleep 1;
done