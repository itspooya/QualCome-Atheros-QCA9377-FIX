sudo mkdir /lib/firmware/ath10k/QCA9377/
sudo mkdir /lib/firmware/ath10k/QCA9377/hw1.0

sudo apt-get install git
git clone https://github.com/kvalo/ath10k-firmware.git
cd ath10k-firmware/QCA9377/hw1.0
sudo cp board.bin  /lib/firmware/ath10k/QCA9377/hw1.0
sudo cp firmware-5.bin_WLAN.TF.1.0-00267-1   /lib/firmware/ath10k/QCA9377/hw1.0/firmware5.bin
sudo modprobe -r ath10k_pci
sudo modprobe ath10k_pci


cd /lib/firmware/ath10k/QCA9377/hw1.0
sudo mv firmware5.bin  firmware-5.bin
