#!/bin/bash

echo "pre-Loading TCP BBR ..."
[ ! -f /etc/sysctl.conf ] && touch /etc/sysctl.conf
sed -i '/net.core.default_qdisc.*/d' /etc/sysctl.conf
sed -i '/net.ipv4.tcp_congestion_control.*/d' /etc/sysctl.conf
echo "#net.core.default_qdisc=fq" >>/etc/sysctl.conf
echo "#net.ipv4.tcp_congestion_control=bbr_powered" >>/etc/sysctl.conf
echo "Finish! "
[ "$1" == '-f' ] && {
echo "It will reboot now..."
} || {
read -n 1 -p "Press Enter to reboot..." INP
if [ "$INP" != '' ] ; then
echo -ne '\b \n'
fi
}
sleep 3 && reboot
