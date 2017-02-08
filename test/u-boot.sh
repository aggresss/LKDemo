qemu-system-arm \
    -smp 1 \
    -sd vexpress.img \
    -M vexpress-a15 \
    -serial stdio \
    -kernel u-boot
