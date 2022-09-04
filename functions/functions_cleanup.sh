#!/bin/bash
function build_cleanup {
	####################################################
	#Post Build Cleanup
	####################################################
	echo "----------------------------------------------"
	echo " Post Install Cleanup "
	echo "----------------------------------------------"
	####################################################
	apt clean && apt autoclean
	####################################################
	echo "----------------------------------------------"
	echo " Stopping SVXLink "
	echo "----------------------------------------------"
	####################################################
	systemctl stop svxlink
	####################################################
	echo "----------------------------------------------"
	echo " Reset/Clearing SVXLink logs"
	echo "----------------------------------------------"
	####################################################
	echo "" > /etc/svxlink/svxlink.conf
	echo "" > /etc/svxlink/svxlink.d/ModuleEchoLink.conf
	echo "" > /var/log/svxlink
	####################################################
	echo "----------------------------------------------"
	echo " Remove Debian dir from openrepeater dir"
	echo "----------------------------------------------"
	####################################################
	rm -rf /var/www/openrepeater/debian
	####################################################
	#Enable neofetch
	####################################################
	cat >> /etc/bash.bashrc <<- DELIM
		###############################################
		# Enable neofetch System info Reporting
		###############################################
		neofetch
		DELIM
}
