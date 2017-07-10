#!/usr/bin/env bash
. ~/.rvm/scripts/rvm
rvm requirements
rvm install 2.3 --disable-binary
rvm use 2.3
find . -name gem
gem install jekyll
