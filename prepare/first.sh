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
          docker pull ubuntu:18.10
          clear
          docker images
}
