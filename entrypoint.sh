#!/usr/bin/env sh

set -e
set -u

umount $MOUNT || true
rpcbind
mount -t "$TYPE" -o "$OPTIONS" "$SHARE" "$MOUNT"
dmesg --follow
