#!/bin/bash
serf members -format json | /scripts/writehosts.sh > /data/hosts
kill -1 `cat /var/run/dnsmasq.pid`

