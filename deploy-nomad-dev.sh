#!/bin/bash

nomad agent -dev &
sleep 10
nomad job run -address=http://127.0.0.1:4646 jobs/apps.hcl

