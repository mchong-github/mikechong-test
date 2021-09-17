#!/bin/bash

if [[ -z $(ps -ef | grep 'nomad agent' | grep -v 'grep') ]] ; then
  $(nomad agent -dev &) 
  sleep 10
else
  echo "nomad already running"
fi

if [[ -z $(nomad status -address=http://127.0.0.1:4646 | grep run-apps) ]] ; then
  nomad job run -address=http://127.0.0.1:4646 jobs/apps.hcl
else
  echo "job already ran"
fi

