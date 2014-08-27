#!/bin/bash
ip=`hostname -i`
exec serf agent -tag role=puppetagent -bind=$ip

