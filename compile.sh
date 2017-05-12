#!/usr/bin/env bash

mkdir -p build

mkdir -p build
go build -ldflags "-s -w" -o build/app app.go
cp image.png build/
cp index.html build/
cd build
[[ -e forgedtofight.io.static.tar.gz ]] && rm -f forgedtofight.io.static.tar.gz
tar -zcvf forgedtofight.io.static.tar.gz app image.png index.html

exit 0
