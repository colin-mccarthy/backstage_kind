#!/bin/bash
#
#
#

set -oe errexit

# desired cluster name; default is "kind"
KIND_CLUSTER_NAME="backstage"


echo "> initializing Kind cluster: ${KIND_CLUSTER_NAME}"

# create a cluster
cat <<EOF |  kind create cluster  --image kindest/node:v1.23.13 --name "${KIND_CLUSTER_NAME}" --config=-
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
nodes:
- role: control-plane
EOF


echo " ✓ adding helm charts 📦 "
##helm
helm repo add bitnami https://charts.bitnami.com/bitnami

helm repo add backstage https://backstage.github.io/charts

helm install backstage  backstage/backstage --create-namespace --namespace backstage
