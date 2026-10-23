#!/bin/sh
ls -la > /tmp/dir
echo "apiVersion: v1
kind: ConfigMap
metadata:
  name: cb"
