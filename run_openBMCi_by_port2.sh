#!/bin/bash
sudo ~/qemu-system-arm -m 256 -M palmetto-bmc -nographic -drive file=/home/vagrant/openbmc/build/tmp/deploy/images/palmetto/obmc-phosphor-image-palmetto.static.mtd,format=raw,if=mtd -net nic -net user,hostfwd=:127.0.0.1:2443-:443,hostname=qemu
