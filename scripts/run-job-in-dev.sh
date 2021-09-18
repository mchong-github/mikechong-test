#!/bin/bash

nomad job stop -address='http://127.0.0.1:4646' -purge run-apps
sleep 5
nomad job run -address='http://127.0.0.1:4646' jobs/apps.hcl
