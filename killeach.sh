#!/usr/local/bin/bash
#
# killeach -- Kill all processes provided from stdin
#
# copyright (c) 2018 Cj-bc
# This software is released under MIT License.

[ -p /dev/stdin ] || echo "please pass PID to kill from stdin." && exit 66
while read pid; do
  kill $pid
  [ $? -eq 0 ] || echo "couldn't kill $pid"
done < <(cat -)

exit 0
