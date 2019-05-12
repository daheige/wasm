#!/usr/bin/env bash
root_dir=$(cd "$(dirname "$0")"; cd ..; pwd)

export GOARCH=wasm
export GOOS=js
go build -o $root_dir/public/test.wasm $root_dir/wasm/app.go

echo "build wasm success!"

