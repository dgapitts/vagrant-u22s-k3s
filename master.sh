#!/bin/bash

source /vagrant/provision_base.sh


curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION=v1.25.9+k3s1 sh -

k3s kubectl config view --raw >> ~/.kube/config

mkdir ~/.kube
k3s kubectl config view --raw | tee ~/.kube/config
chmod 600 ~/.kube/config


kubectl get nodes
snap install helm --classic


helm repo add stackgres-charts https://stackgres.io/downloads/stackgres-k8s/stackgres/helm/
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update




