#!/bin/bash

nomad job stop -address='http://192.168.1.41:4646' -purge run-apps
sleep 5
nomad job run -address='http://192.168.1.41:4646' jobs/apps.hcl
