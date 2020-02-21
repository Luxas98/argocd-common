#!/usr/bin/env bash
kubectl -n pulsar delete all --all
kubectl -n pulsar delete pvc pulsar-bookkeeper-journal-pulsar-bookkeeper-0
kubectl -n pulsar delete pvc pulsar-bookkeeper-journal-pulsar-bookkeeper-1
kubectl -n pulsar delete pvc pulsar-bookkeeper-journal-pulsar-bookkeeper-2
kubectl -n pulsar delete pvc pulsar-bookkeeper-ledgers-pulsar-bookkeeper-0
kubectl -n pulsar delete pvc pulsar-bookkeeper-ledgers-pulsar-bookkeeper-1
kubectl -n pulsar delete pvc pulsar-bookkeeper-ledgers-pulsar-bookkeeper-2
kubectl -n pulsar delete pulsar-prometheus-data
kubectl -n pulsar delete pulsar-zookeeper-data-pulsar-zookeeper-0
kubectl -n pulsar delete pulsar-zookeeper-data-pulsar-zookeeper-1
kubectl -n pulsar delete pulsar-zookeeper-data-pulsar-zookeeper-2
kubectl delete storageclass pulsar-bookkeeper-journal
kubectl delete storageclass pulsar-bookkeeper-ledgers
kubectl delete storageclass pulsar-zookeeper-data
kubectl delete ns pulsar
