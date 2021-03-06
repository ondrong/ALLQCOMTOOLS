#!/bin/bash

if [ -f "$HOME/.winixrc" ]; then
	source ~/.winixrc
fi

CLOUD=root@139.162.115.228
ROUTER_IP=192.168.1.1
WORK=user5@10.150.20.15
PHONE=root@localhost

echo "connect to $1"
case "$1" in  
	cloud)  ssh $CLOUD -p 22 -o ForwardX11Trusted=yes -o ForwardX11=yes -C -o Compression=yes;;
	router) ssh $ROUTER_IP -l root -p 22;;
	work) ssh $WORK -p 22 -o ForwardX11Trusted=yes -o ForwardX11=yes -C -o Compression=yes;;
	phone) ssh $PHONE -p 12306 -o ForwardX11Trusted=yes -o ForwardX11=yes -C -o Compression=yes;;
	*) echo "no target for $1" >&2;;
esac
