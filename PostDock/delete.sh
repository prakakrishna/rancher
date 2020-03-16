#!/bin/bash

rancher kubectl delete -f $1/pgpool
rancher kubectl delete -f $1/nodes
rancher kubectl delete -f $1/services
rancher kubectl delete -f $1/volumes
rancher kubectl delete -f $1/configs
rancher kubectl delete -f $1/namespace
rm -rf $1
