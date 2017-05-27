#!/usr/bin/env sh

set -e
set -u

umount $MOUNT || true
rpcbind
mount -t "$TYPE" -o "$OPTIONS" "$SHARE" "$MOUNT"
# i am a meat popsicle
tail -f /dev/null
