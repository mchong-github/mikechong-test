#!/bin/bash

job='jobs/docs.hcl'

nomad job plan $job
nomad job run $job

