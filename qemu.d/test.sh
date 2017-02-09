qemu-system-arm \
    -nographic \
    -sd vexpress.img \
    -M vexpress-a9 \
    -m 512M \
    -kernel zImage \
    -dtb vexpress-v2p-ca9.dtb \
    -smp 4 \
    -append "init=/linuxrc root=/dev/mmcblk0p1 rw rootwait earlyprintk console=ttyAMA0" \
    -net nic,vlan=0 -net tap,vlan=0,ifname=tap30,script=no,downscript=no
