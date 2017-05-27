# nfs-client

# Usage

```bash

docker run -d --cap-add SYS_ADMIN -e "SHARE=storage:storage" evansgp/nfs-client

```

Executes:

mount -t "$TYPE" -o "$OPTIONS" "$SHARE" "$MOUNT"

Defaults:
- TYPE nfs4
- OPTIONS nfsvers=4
- MOUNT /mnt/nfs-1
