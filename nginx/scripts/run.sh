#!/bin/bash
sleep 15
env
cat /etc/hosts
puppet agent --no-daemonize --server puppet --logdest console --verbose
