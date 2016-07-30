.PHONY: dependencies

dependencies:
	@echo "----- Updating device -----"
	@apt-get update
	@apt-get install hostapd dnsmasq git python-pip apache2 python-serial -y
	@apt-get upgrade -y

	@echo "----- Setting up wifi network -----"
	@cp -b ${CURDIR}/interfaces /etc/network/interfaces
	@cp -b ${CURDIR}/dhcpcd.conf /etc/dhcpcd.conf
	@cp -b ${CURDIR}/hostapd /etc/default/hostapd
	@cp -b ${CURDIR}/hostapd.conf /etc/hostapd/hostapd.conf
	@cp -b ${CURDIR}/dnsmasq.conf /etc/dnsmasq.conf
	
	@echo "All done! Please reboot your device"
