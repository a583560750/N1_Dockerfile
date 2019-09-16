#!/bin/bash

set -e

if [ ! -e '/data/run.sh' ]; then
    cp -a /data_tmp/* /data
    bash /data/run.sh
else
    bash /data/run.sh
fi

exec "$@"
