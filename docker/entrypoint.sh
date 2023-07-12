#!/bin/sh

npm config set registry https://registry.npm.taobao.org 

if [ -f /slidev/package.json ]; then
    if [ -d /slidev/node_modules ]; then
        npm update
    else
        npm install
    fi
    echo "Start slidev now ..."
    npx slidev --remote
else
    echo "package.json not found in the bind mount to /slidev"
    exit 1
fi
