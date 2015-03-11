msg=$(networksetup -getairportpower en1) 
if [[ $msg = 'Wi-Fi Power (en1): On' ]]
then
	networksetup -setairportpower en1 off
	sudo ifconfig en0 up
	echo 'wifi turned offi'
else
	networksetup -setairportpower en1 on
	sudo ifconfig en0 down
	echo 'wifi turned oni'
fi
