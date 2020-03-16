#!/bin/bash

if [[ -z $1 ]]; then
  echo "Provide cluster name as an argument"
  exit
fi

rancher context switch
rancher cluster create $1
rancher context switch Default
echo "------------------------------------------------------------------------------"
echo "Run the below command on the node to make it as controlplane, etcd and worker"
rancher cluster add-node --controlplane --etcd --worker $1

echo
echo "------------------------------------------------------------------------------"
echo "Run the below command on the node to make it as controlplane and etcd"
rancher cluster add-node --controlplane --etcd --worker $1

echo
echo "------------------------------------------------------------------------------"
echo "Run the below command on the node to make it as worker"
rancher cluster add-node --worker $1

echo
echo "------------------------------------------------------------------------------"
echo "The script is waiting for cluster to up (10 minutes). Ctrl+C to stop."
rancher wait --timeout 600 $1
