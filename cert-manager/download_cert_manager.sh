#!/usr/bin/env bash
VERSION=${VERSION:-"0.8.0"}
MANIFEST=${MANIFEST:-"cert-manager.yaml"}
MANIFEST=${MANIFEST:-"cert-manager-no-webhook.yaml"}

wget "https://github.com/jetstack/cert-manager/releases/download/v${VERSION}/${MANIFEST}"