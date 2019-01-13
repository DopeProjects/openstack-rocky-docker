#!/bin/bash

mysqlup() {
    mkdir -p /root/workdir/
    docker pull theraw/rocky:mysql
    cd /root/workdir/
    curl -s https://raw.githubusercontent.com/DopeProjects/openstack-rocky-docker/master/containers/docker-compose-mysql.yml /root/workdir/docker-compose.yml
    cd /root/workdir/; docker-compose up -d
    cd ~/; rm -Rf /root/workdir/
    clear
    docker ps
}
