#!/bin/bash
    echo "Este es el User_Data funcionando como Constructor"  > ~/mensaje.txt
    yum update -y
    yum install httpd -y
    systemctl enable httpd
    systemctl start httpd