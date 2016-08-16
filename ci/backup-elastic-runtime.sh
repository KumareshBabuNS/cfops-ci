#!/bin/bash

set -e

LOG_LEVEL=debug cfops backup \
  -opsmanagerhost $OPSMANAGER_HOST \
  -adminuser $ADMIN_USER \
  -adminpass $ADMIN_PASS \
  -opsmanageruser $OPSMANAGER_HOST_USER \
  -destination . \
  -tile elastic-runtime \
  -nfs bp

TIMESTAMP=$(date +"%Y%d%m%H%M")

tar -cf backup-output/elasticruntime-$TIMESTAMP.tar elasticruntime
