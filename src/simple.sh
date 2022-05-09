#!/bin/bash

iter=0;

while [ $iter -lt 10 ]
do
    result=$(systemctl is-active simple.service);
    echo $result # &> /var/log/systemd-examples/simple-service.log
    iter=$(( $iter + 1 ));
    sleep 1;
done