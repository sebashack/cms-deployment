#!/bin/bash

# Only to be used inside EC2 instance with shared file system.
sudo chown ubuntu:ubuntu /mnt/efs/wordpress-fs/
if [ ! -d /mnt/efs/wordpress-fs/wordpress ]; then
  cp -r wordpress /mnt/efs/wordpress-fs/
fi
