#!/usr/bin/env bash

die () {
    echo >&2 "$@"
    exit 1
}

[ "$#" -eq 1 ] || die "Version argument required"
version=$1
set -e
echo "****************Login with user 'getlantern' and the password in 1pass under Docker Hub****************"
docker login
docker build -t getlantern/docker-build:$version . && docker push getlantern/docker-build:$version
