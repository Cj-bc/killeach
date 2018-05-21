#!/usr/local/bin/bash


while read pid; do
  kill $pid
done < <(cat -)
