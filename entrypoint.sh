#!/usr/bin/env sh

set -e
set -u

if mountpoint -q -- "$MOUNT"; then
  umount "$MOUNT"
fi

[ ! -d "$MOUNT" ] && mkdir -p "$MOUNT"
rpcbind
mount -t "$TYPE" -o "$OPTIONS" "$SHARE" "$MOUNT"
df | grep "$MOUNT"
ls -lathr "$MOUNT"
tail -f /dev/null
