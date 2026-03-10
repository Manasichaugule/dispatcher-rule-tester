#!/bin/bash

echo "==============================="
echo "Starting Dispatcher Rule Check"
echo "==============================="

deny_count=$(grep -c "deny" filters.txt)
#grep-c counts lines containing "deny"

if [ $deny_count -gt 0 ]; then
    echo "Deny rules found: $deny_count"
else
    echo "No deny rules found!"
fi

if grep -q "/system/*" filters.txt; then
    echo "/system path is blocked"
else
    echo "Warning: /system path NOT blocked"
fi

echo "===================================="
echo "Dispatcher rule validation Completed"
echo "===================================="


