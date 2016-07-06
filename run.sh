#!/bin/sh
sudo killall ospfd
sudo killall zebra
sudo -E ./bin/zebra -u root -g root -d -f ./etc/zebra.conf
sudo -E ./bin/ospfd -u root -g root -d -f ./etc/ospfd.conf

