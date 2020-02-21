#!/usr/bin/env bash
# helm install --name nginx-ingress stable/nginx-ingress --namespace api-gateway --set rbac.create=true
NGINX_PATH=${NGINX_PATH:-"./nginx-ingress-helm-0.20"}
STATIC_IP=${STATIC_IP:-"\$\(STATIC_IP\)"}
NAMESPACE=${1:-"\$(POD_NAMESPACE)"}

helm template "${NGINX_PATH}/" --name-template=nginx-ingress \
    --namespace ${NAMESPACE} \
    --values ${NGINX_PATH}/values.yaml \
    --set rbac.create=true \
    --set controller.service.externalTrafficPolicy=Local \
    --set controller.publishService.enabled=true \
     > nginx-controller.yaml
    #  > test.yaml
    # --set controller.service.loadBalancerIP="${STATIC_IP}" \
