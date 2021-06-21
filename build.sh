#!/bin/bash
#docker build -t kramerius-builder .
./s2i build --incremental=true --exclude="" https://github.com/ceskaexpedice/kramerius.git kramerius-builder ceskaexpedice/kramerius -r master
if hash docker-squash 2>/dev/null; then
  docker-squash ceskaexpedice/kramerius -t ceskaexpedice/kramerius
fi
