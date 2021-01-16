#!/bin/bash

envsubst < /config.yml.template > /config.yml
nebula -config /config.yml

