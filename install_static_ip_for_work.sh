# ubuntu20


sudo cp /etc/netplan/01-network-manager-all.yaml  /etc/netplan/01-network-manager-all-backup.yaml

sudo cp ./full_netconfig_work  /etc/netplan/01-network-manager-all.yaml
cat /etc/netplan/01-network-manager-all.yaml


sudo netplan apply
