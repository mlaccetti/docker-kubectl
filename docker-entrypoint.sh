#!/bin/bash

# For easy debugging
# set -ex

if [ "$1" == "--" ]; then
  echo "Running user provided command: [ $@ ]"
  exec $@
else
  exec kubectl $@
fi
