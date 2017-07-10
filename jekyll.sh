#!/usr/bin/env bash
export JEKYLL_VERSION=3.5
docker run --rm \
  --volume=$PWD:/srv/jekyll \
  -it jekyll/builder:$JEKYLL_VERSION \
  jekyll $@
