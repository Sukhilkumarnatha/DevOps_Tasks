#!/usr/bin/env bash
echo "=== Running API Health Inspection ==="
echo "Version 2.0-Team Alpha & Beta Unified"

API_URL="https://httpbin.org/status/200"
RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" "$API_URL")

if [ "$RESPONSE" -eq 200 ]; then
    echo "Service operational: HTTP $RESPONSE"
else
    echo "Service degraded: HTTP $RESPONSE"
fi

exit 0
