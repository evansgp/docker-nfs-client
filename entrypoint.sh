#!/usr/bin/env sh

set -e
set -u

rpcbind
# if this container has previously been running the old mount may still be there
umount $MOUNT || true
mount -t "$TYPE" -o "$OPTIONS" "$SHARE" "$MOUNT"
# FIXME
tail -f /dev/null
