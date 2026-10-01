echo Version 2.0-Team Alpha & Beta Unified
RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" https://api.github.com)
echo "API HTTP Status Code: $RESPONSE"
exit 0
