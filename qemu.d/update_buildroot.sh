#!/bin/bash
# 用于将buildroot生成的根文件系统更新到已生成的qemu-img中
# 需要放在buildroot目录的 output/image 目录下执行

sudo mkdir -p /mnt/rootfs

sudo losetup /dev/loop0 vexpress.img

sudo partx -u /dev/loop0

sudo mount -o loop /dev/loop0p1 /mnt/rootfs

sudo rsync -a --delete ../target/ /mnt/rootfs/

sudo chown -R root:root /mnt/rootfs

sudo sync

sudo umount -f /mnt/rootfs

sudo losetup -d /dev/loop0

exit
