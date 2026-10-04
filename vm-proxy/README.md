```
sudo dnf5 isntall unzip golang
wget https://github.com/xjasonlyu/tun2socks/releases/download/v2.7.0/tun2socks-linux-amd64.zip

sudo nano /usr/local/sbin/vm-proxy-up
sudo nano /usr/local/sbin/vm-proxy-down

sudo nano /etc/systemd/system/vm-proxy.service
sudo nano /etc/NetworkManager/dispatcher.d/90-hyperv-proxy

sudo chown root:root /etc/NetworkManager/dispatcher.d/90-hyperv-proxy
```
