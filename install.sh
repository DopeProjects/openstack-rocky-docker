#!/bin/bash

mkdir -p /opt/rocky
mkdir -p /opt/rocky/prepare
curl -s https://raw.githubusercontent.com/DopeProjects/openstack-rocky-docker/master/bin/rocky > /bin/rocky
curl -s https://raw.githubusercontent.com/DopeProjects/openstack-rocky-docker/master/prepare/first.sh > /opt/rocky/prepare/first
curl -s https://raw.githubusercontent.com/DopeProjects/openstack-rocky-docker/master/prepare/up.sh > /opt/rocky/prepare/up


chmod +x /bin/rocky
chmod +x /opt/rocky/prepare/*
