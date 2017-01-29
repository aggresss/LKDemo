#
#target: gdbserver /dev/ttyAMA1 /bin/busybox 

#PC:
#(gdb) set remotetimeout -1
#(gdb) target remote :4321

qemu-system-arm -sd vexpress.img -M vexpress-a9 -m 512M -kernel zImage -dtb vexpress-v2p-ca9.dtb  -smp 4 -append "init=/linuxrc root=/dev/mmcblk0p1 rw rootwait earlyprintk console=ttyAMA0" -serial stdio -serial tcp::4321,server 2>/dev/null
