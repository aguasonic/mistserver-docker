#!/bin/bash

docker run -d --name mistserver-docker --restart=always --net=host -v /temp:/media aguasonic/mist-server

