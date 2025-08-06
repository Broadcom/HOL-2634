#!/bin/sh

for disk in $(vdq -i | grep -o 'eui\.[a-z0-9]*'); do
  echo "Claiming ESA disk: $disk"
  esxcli vsan storagepool mount --disk $disk
done

echo "All eligible ESA disks processed."
