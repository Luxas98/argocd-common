#!/usr/bin/env bash
kubectl create namespace cert-manager
kubectl label namespace cert-manager certmanager.k8s.io/disable-validation=true
kubectl apply --validate=false -f https://raw.githubusercontent.com/jetstack/cert-manager/release-0.7/deploy/manifests/cert-manager.yaml
# kubectl create clusterrolebinding cluster-admin-binding \
#   --clusterrole=cluster-admin \
#   --user=$(gcloud config get-value core/account)
