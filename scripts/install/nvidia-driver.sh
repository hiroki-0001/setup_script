#!/bin/bash
set -euxo pipefail

sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo ubuntu-drivers autoinstall

cat << EOS
=========================================

Please reboot

=========================================
EOS