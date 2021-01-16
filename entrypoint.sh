#!/bin/bash

envsubst < /config.yml.template > /config.yml
if [ "$AM_LIGHTHOUSE" != "true" ]; then
    sed -i 's/^##########//' /config.yml
fi

exec nebula -config /config.yml

