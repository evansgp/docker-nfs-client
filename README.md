# nfs-client

# Usage

```bash
docker run -d --cap-add SYS_ADMIN -v nfs-volumes:/mnt/nfs-1 -e "SHARE=storage:storage" evansgp/nfs-client
```

This executes:

```bash
mount -t "$TYPE" -o "$OPTIONS" "$SHARE" "$MOUNT"
```

ENV defaults:
- TYPE nfs4
- OPTIONS nfsvers=4
- MOUNT /mnt/nfs-1

# TODO

Emit some better logging, if possible.
