./build/qemu-system-loongarch64 \
    -m 4G \
    -cpu la464 \
    -machine virt \
    -smp 4 \
     -kernel vmlinux  \
     -initrd initramfs-6.7.0-rc4+ \
    -serial stdio  \
    -monitor telnet:localhost:4428,server,nowait \
    -device virtio-gpu-pci\
    -net nic -net user \
    -device nec-usb-xhci,id=xhci,addr=0x1b \
    -device usb-tablet,id=tablet,bus=xhci.0,port=1 \
    -device usb-kbd,id=keyboard,bus=xhci.0,port=2 \
    -device virtio-blk-pci,drive=test -drive if=none,id=test,file=./openEuler-22.03-LTS-LoongArch-loongarch64.qcow2 \
    -append "root=/dev/vda2 console=tty  console=ttyS0,115200"

# user: root  passwd: loongson
