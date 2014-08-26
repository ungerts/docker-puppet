#!/bin/bash
ip=`hostname -i`
exec serf agent -tag role=dnsmasq -bind=$ip
