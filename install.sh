#! env bash

#create secret from vsphere creds
kubectl create secret generic vsphere-creds --from-literal VSPHERE_USER=${VSPHERE_USER} --from-literal VSPHERE_PASS=${VSPHERE_PASS}

helm repo add influxdata https://helm.influxdata.com/
helm upgrade --install telegraf influxdata/telegraf --values values.yml
