#!/usr/bin/env bash
kubectl apply -f namespace.yaml || :
kubectl create clusterrolebinding ambassador-admin-binding --clusterrole=cluster-admin --user=$(gcloud info --format="value(config.account)") || :
kubectl -n api-gateway apply -f ambassador.yaml
