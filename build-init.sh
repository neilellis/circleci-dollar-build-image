#!/bin/bash
set -eux
cd /home/circleci
git clone https://github.com/sillelien/build-utils.git
chmod a+x /home/circleci/build-utils/*.sh
cd -
sudo ntpdate -s time.nist.gov || :
