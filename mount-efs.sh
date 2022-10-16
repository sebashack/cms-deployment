#!/bin/bash

sudo mount -t efs -o tls $1:/ /mnt/efs/wordpress-fs
