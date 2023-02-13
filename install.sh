echo "Installing TFP-AUR..."
echo "Creating install directory [00]"
mkdir -p /usr/local/bin/
echo "Copying files [33]"
cp aur.sh /usr/local/bin/tfpaur
chmod +x /usr/local/bin/tfpaur
echo "Creating uninstall binary [67]" 
echo "rm /usr/local/bin/tfpaur" > /usr/local/bin/tfpaur-uninstall
chmod +x /usr/local/bin/tfpaur-uninstall
echo "Install complete! Run \"tfpaur\" to run the program. Run \"tfpaur-uninstall\" to uninstall the program."
