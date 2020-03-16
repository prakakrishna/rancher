#!/bin/bash

if [[ -z $1 ]]; then
  echo "Provide cluster name as an argument"
  exit
fi

rancher cluster rm $1
echo "Run the cleanup.sh script on all the nodes"
