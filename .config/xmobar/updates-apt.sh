#!/bin/sh

updates=$(apt list --upgradable 2> /dev/null | grep -c upgradable);

if [ "$updates" -gt 0 ]; then
    echo "$updates Updates"
else
    echo "No Updates"
fi
