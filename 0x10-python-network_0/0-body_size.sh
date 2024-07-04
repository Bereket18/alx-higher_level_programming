# !/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

URL="$1"

size=$(curl -s -o /dev/null -w '%{size_download}' "$URL")

echo "$size"