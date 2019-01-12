# openstack-rocky-docker

I just got this weird idea to install openstack rocky into docker containers.

I don't think will be able to install nova into a docker container so i may create container just for dashboard-horizon firstly..


Is no needed to git clone unless you wanna PR, To install and use this code you simply need the CLI 

**```curl -s -LA "Raws InS" "http://bit.ly/RockyCli" | bash -s```**


#1 . There is no EXPOSE of docker container ports to public. This is just for testing purposes i was doing tests on my pc while docker was installed on my pc so was all in LAN, if you want to expose it to public feel free to use iptables and forward ports.
