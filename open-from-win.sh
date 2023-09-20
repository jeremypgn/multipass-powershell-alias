#!/bin/bash

if [ -d "$1" ]; then
    cd "$1"
else
    cd /home/ubuntu
fi
