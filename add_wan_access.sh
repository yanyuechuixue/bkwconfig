#!/bin/sh
FILE="/etc/config/firewall"
if
echo -e "config rule" >>$FILE
echo -e "\toption target 'ACCEPT'" >>$FILE
echo -e "\toption src 'wan'" >>$FILE
echo -e "\toption proto 'tcp'" >>$FILE
echo -e "\toption dest_port '22'" >>$FILE
echo -e "\toption name 'SSH'\n" >>$FILE
then
echo "firewall has been modified(SSH)"
fi

if
echo -e "config rule" >>$FILE
echo -e "\toption target 'ACCEPT'" >>$FILE
echo -e "\toption src 'wan'" >>$FILE
echo -e "\toption proto 'tcp'" >>$FILE
echo -e "\toption dest_port '80'" >>$FILE
echo -e "\toption name 'wanuhttpd'" >>$FILE
then
echo "firewall has been modified(web)"
fi

if
/etc/rc.d/S19firewall restart
then
echo "firewall has been restart"
fi
