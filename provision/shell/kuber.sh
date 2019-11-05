#!/bin/bash

echo '### kubernetes ###'

# install kubernetes
echo
echo 'Install Kubernetes'
echo
sudo apt-get update && sudo apt-get install -y apt-transport-https
cd /tmp
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl
