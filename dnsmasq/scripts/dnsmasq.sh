#!/bin/bash
exec dnsmasq --keep-in-foreground --conf-dir=/etc/dnsmasq.d,.dpkg-dist,.dpkg-old,.dpkg-new
