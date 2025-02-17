#!bin/bash
while true;
do
sudo /usr/bin/tcpdump -i any -l | cronolog /var/log/tcpdump/tcpdump-%Y-%m-%d-%H.log
done
