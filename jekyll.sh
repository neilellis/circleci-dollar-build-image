#!/usr/bin/env bash
. ~/.rvm/scripts/rvm
rvm requirements
rvm install $1 --disable-binary
rvm use $1
