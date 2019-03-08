#!/bin/bash
docker build -t kramerius-builder .
s2i build --incremental=true --exclude="" https://github.com/moravianlibrary/kramerius.git kramerius-builder moravianlibrary/kramerius -r master
if hash docker-squash 2>/dev/null; then
  docker-squash moravianlibrary/kramerius -t moravianlibrary/kramerius
fi
