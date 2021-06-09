#!/bin/sh

# create directories
mkdir -p run/influxdb/

# necessary roots
chmod 777 -R /var/lib/influxdb/

# InfluxDB installation && initialization
influxd