#!/bin/sh/

# telegraf
rm telegraf-1.17.0_linux_i386.tar.gz
chmod 777 /telegraf-1.17.0/*
cp -r telegraf-1.17.0/* ./
rm /etc/telegraf/telegraf.conf
cp telegraf.conf /etc/telegraf.conf
mv telegraf.conf /etc/telegraf/telegraf.conf

telegraf --config /etc/telegraf.conf