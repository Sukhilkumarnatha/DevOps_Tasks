#!/usr/bin/env bash

endpoint="<YOUR_API_ENDPOINT>"
status=$(curl -s -o /dev/null -w "%{http_code}" "$endpoint")

if [[ "$status" == "200" ]]; then
  echo "API is healthy (HTTP $status)"
else
  echo "API check failed (HTTP $status)"
fi
