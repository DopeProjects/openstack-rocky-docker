#!/bin/bash

check() {
          if ! [ -x "$(command -v docker)" ]; then
            echo 'Please install Docker to continue..';
            exit 1
          fi

          if [ "$(whoami)" != "raw" ]; then
            echo 'Please login as root because this script has not been writed with "sudo"';
            exit 1
          fi
}

pull() {
          clear
          docker network create --subnet=172.69.0.0/16 rocky
          docker pull ubuntu:18.10
          docker pull theraw/rocky:mysql
          clear
          docker images
}
