#!/usr/bin/env bash
kubectl apply -f redis-namespace.yaml
kubectl -n redis apply -f redis-commander-deployment.yaml
