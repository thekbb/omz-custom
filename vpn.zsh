#################Junos VPN Stop and Start Commands#######################
vpn-start() {
        sudo launchctl load -w /Library/LaunchDaemons/net.juniper.AccessService.plist
        launchctl load -w /Library/LaunchAgents/net.juniper.pulsetray.plist
}
vpn-stop() {
        launchctl unload -w /Library/LaunchAgents/net.juniper.pulsetray.plist
        sudo launchctl unload -w /Library/LaunchDaemons/net.juniper.AccessService.plist
        osascript -e 'tell application "Junos Pulse" to quit'
}
##########################################################################
