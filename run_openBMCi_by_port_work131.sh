#!/bin/bash
sudo qemu-system-arm -m 256 -M palmetto-bmc -nographic -drive file=/home/vagrant/openbmc/build/tmp/deploy/images/palmetto/obmc-phosphor-image-palmetto.static.mtd,format=raw,if=mtd -net nic -net user,hostfwd=:192.168.0.131:2443-:443,hostfwd=:192.168.0.131:2222-:22,hostfwd=tcp:192.168.0.131:80-:80,hostname=qemu
