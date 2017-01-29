qemu-system-arm -sd vexpress.img -M vexpress-a9 -m 512M -kernel zImage -dtb vexpress-v2p-ca9.dtb  -append "init=/linuxrc root=/dev/mmcblk0p1 rw rootwait" -net nic -net user
