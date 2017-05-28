#!/usr/bin/env sh

set -e
set -u

rpcbind
# if this container has previously been running the old mount may still be there
umount $MOUNT || true
# if the mount is a subdirectory of a volume we must create it if it's the first
# time we're starting the container
mkdir -p $MOUNT || true
mount -t "$TYPE" -o "$OPTIONS" "$SHARE" "$MOUNT"
# FIXME
tail -f /dev/null
