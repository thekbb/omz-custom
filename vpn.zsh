#################Junos VPN Stop and Start Commands#######################
vpn-start() {
sudo launchctl load /Library/LaunchDaemons/net.pulsesecure.AccessService.plist
}

vpn-stop() {
sudo launchctl unload /Library/LaunchDaemons/net.pulsesecure.AccessService.plist
}
##########################################################################
