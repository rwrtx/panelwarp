#!/bin/bash


functions ulang (){
	/etc/init.d/ssh restart
	/etc/init.d/dropbear restart
	/etc/init.d/stunnel4 restart
	/etc/init.d/openvpn restart
	/etc/init.d/fail2ban restart
	/etc/init.d/cron restart
	/etc/init.d/nginx restart
	/etc/init.d/squid restart
	systemctl restart xray
	systemctl restart xray.service
	screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 500
	systemctl restart sshws.service
	systemctl restart ws-dropbear.service
	systemctl restart ws-stunnel.service
	systemctl restart trojan-go.service
}

ulang