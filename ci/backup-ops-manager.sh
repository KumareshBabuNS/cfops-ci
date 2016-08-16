#!/bin/bash

LOG_LEVEL=debug cfops backup \
  -opsmanagerhost $OPSMANAGER_HOST Ops Manager VM hostname] \
  -adminuser $ADMIN_USER \
  -adminpass $ADMIN_PASS \
  -opsmanageruser $OPSMANAGER_HOST_USER \
  -destination . \
  -tile ops-manager

TIMESTAMP=$(date +"%Y%d%m-%H%M")

tar -cf backup-output/opsmanager-$TIMESTAMP.tar opsmanager
