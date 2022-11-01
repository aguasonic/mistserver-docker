#!/bin/bash

# docker run -d --name mistserver --restart=always --net=host -v /home/mark/media:/media aguasonic_mist-server

docker run -d --name ag_mistserver3 --restart=always --net=host -v /temp:/media aguasonic/mist-server



