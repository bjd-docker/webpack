#!/bin/bash

if [ ! -f "package-lock.json" ] || [ `stat -c %Y package-lock.json` -lt `stat -c %Y package.json` ]; then
    echo "> npm install"
    npm install
fi

if [ ! -d "node_modules/" ] || [ `stat -c %Y node_modules/` -lt `stat -c %Y package-lock.json` ]; then
    echo "> npm ci"
    npm ci
fi

exec "$@"
