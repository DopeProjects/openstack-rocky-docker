#!/bin/bash

mkdir -p /opt/rocky
mkdir -p /opt/rocky/prepare
curl -s https://raw.githubusercontent.com/theraw/openstack-rocky-docker/master/rockycli > /bin/rocky
curl -s https://raw.githubusercontent.com/theraw/openstack-rocky-docker/master/prepare/first.sh > /opt/rocky/prepare/first
