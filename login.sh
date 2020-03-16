#!/bin/bash

if [[ -f $1 ]]; then
  . $1
  rancher l -t $BEARER_TOKEN $ENDPOINT --skip-verify
else
  echo "Provide conf file as input"
  exit
fi

