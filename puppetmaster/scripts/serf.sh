#!/bin/bash
ip=`hostname -i`
exec serf agent -tag role=puppetmaster -bind=$ip

