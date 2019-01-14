#!/bin/bash

up() {
    mkdir -p /root/workdir/
    docker pull theraw/rocky:mysql
    cd /root/workdir/
    curl -s "https://raw.githubusercontent.com/DopeProjects/openstack-rocky-docker/master/containers/docker-compose.yml?$(date +%s)" > /root/workdir/docker-compose.yml
    docker-compose -f /root/workdir/docker-compose.yml up -d
    cd ~/; rm -Rf /root/workdir/
    clear
    docker ps
}
