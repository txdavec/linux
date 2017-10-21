#!/bin/bash
# wget https://raw.githubusercontent.com/davechouinard/linux/master/linuxmint.sh && chmod +x *.sh
# Add search lines for domains to: /etc/resolvconf/resolv.conf.d/base

sudo sed -i '/precedence ::ffff:0:0\/96  100/s/^#//g' /etc/gai.conf
sudo apt-get update && sudo apt-get -y install ansible git
mkdir -p ~/github-source; git clone https://github.com/davechouinard/linux.git ~/github-source/linux

cd ~/github-source/linux
ansible-playbook linuxmint-playbook.yml

echo 'recommend running: sudo apt autoremove && sudo apt-get upgrade'
exit 0
