#!/bin/sh

# this script goes to every directory and runs starts dockers
command="docker-compose down $@"

find . -maxdepth 1 -type d \( ! -name . \) -exec bash -c "cd '{}' && ${command}" \;
