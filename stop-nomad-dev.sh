#!/bin/bash

nomad job stop -address='http://127.0.0.1:4646' -purge run-apps

pkill nomad
