#!/usr/bin/env bash

set -e
set -x

mkdir -p gopath/bin
export GOPATH=~/gopath
export PATH=~/gopath/bin:$PATH

go get -u github.com/minio/minio

export MINIO_ACCESS_KEY=minio
export MINIO_SECRET_KEY=miniostorage

mkdir -p ~/s3
minio server ~/s3 &
