#!/bin/bash

cp -r template $1

sed -i "s|%NAMESPACE%|$1|g" $1/*/*

rancher kubectl apply -f $1/namespace
rancher kubectl apply -f $1/configs
rancher kubectl apply -f $1/volumes
rancher kubectl apply -f $1/services
rancher kubectl apply -f $1/nodes
rancher kubectl apply -f $1/pgpool
