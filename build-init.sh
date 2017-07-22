#!/bin/sh
cd /home/circleci
git clone https://github.com/sillelien/build-utils.git
chmod a+x /home/circleci/build-utils/*.sh
cd -
