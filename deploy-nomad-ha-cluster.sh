#!/bin/bash

export SERVER01=192.168.1.41
export SERVER02=192.168.1.42
export SERVER03=192.168.1.43
export CLIENT01=192.168.1.44
export CLIENT02=192.168.1.45
export CLIENT03=192.168.1.46
export NOMADUSER=orious

hashi-up nomad install --ssh-target-addr $SERVER01 --ssh-target-user $NOMADUSER --server --bootstrap-expect 3 --retry-join $SERVER01 --retry-join $SERVER02 --retry-join $SERVER03
hashi-up nomad install --ssh-target-addr $SERVER02 --ssh-target-user $NOMADUSER --server --bootstrap-expect 3 --retry-join $SERVER01 --retry-join $SERVER02 --retry-join $SERVER03
hashi-up nomad install --ssh-target-addr $SERVER03 --ssh-target-user $NOMADUSER --server --bootstrap-expect 3 --retry-join $SERVER01 --retry-join $SERVER02 --retry-join $SERVER03
hashi-up nomad install --ssh-target-addr $CLIENT01 --ssh-target-user $NOMADUSER --client --retry-join $SERVER01 --retry-join $SERVER02 --retry-join $SERVER03
hashi-up nomad install --ssh-target-addr $CLIENT02 --ssh-target-user $NOMADUSER --client --retry-join $SERVER01 --retry-join $SERVER02 --retry-join $SERVER03
hashi-up nomad install --ssh-target-addr $CLIENT03 --ssh-target-user $NOMADUSER --client --retry-join $SERVER01 --retry-join $SERVER02 --retry-join $SERVER03
hashi-up consul uninstall --ssh-target-addr $CLIENT01 --ssh-target-user $NOMADUSER --retry-join $SERVER01 --retry-join $SERVER02 --retry-join $SERVER03
hashi-up consul uninstall --ssh-target-addr $CLIENT02 --ssh-target-user $NOMADUSER --retry-join $SERVER01 --retry-join $SERVER02 --retry-join $SERVER03
hashi-up consul uninstall --ssh-target-addr $CLIENT03 --ssh-target-user $NOMADUSER --retry-join $SERVER01 --retry-join $SERVER02 --retry-join $SERVER03
