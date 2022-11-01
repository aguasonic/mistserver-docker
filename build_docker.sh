#!/bin/bash

ISO_TIMESTAMP=`date -u +"%Y-%m-%dT%H:%M:%S.%1NZ"`

echo $ISO_TIMESTAMP

docker build --tag aguasonic/mist-server --build-arg INVOKED_TIMESTAMP=$ISO_TIMESTAMP .



