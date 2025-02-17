#!bin/bash
sudo apt install tcpdump cronolog
sudo wget https://raw.githubusercontent.com/akulichmark/tcpdump/refs/heads/main/tcpdump.sh
sudo chmod a+x tcpdump.sh
sudo mkdir /var/log/tcpdump
sudo chmod 755 /var/log/tcpdump
sudo wget https://raw.githubusercontent.com/akulichmark/tcpdump/refs/heads/main/tcpdump.service
sudo mv ./tcpdump.service /etc/systemd/system/tcpdump.service
sudo systemctl enable tcpdump.service
sudo systemctl start tcpdump.service
sudo systemctl status tcpdump.service
sudo curl -O -L "https://github.com/grafana/loki/releases/download/v2.9.3/promtail-linux-amd64.zip" 
sudo unzip promtail-linux-amd64.zip
sudo chmod a+x promtail-linux-amd64
sudo useradd --system promtail
# sudo usermod -a -G adm promtail
sudo wget https://raw.githubusercontent.com/akulichmark/tcpdump/refs/heads/main/promtail-conf.yml
sudo wget https://raw.githubusercontent.com/akulichmark/tcpdump/refs/heads/main/promtail.service
sudo mv ./promtail.service /etc/systemd/system/promtail.service
sudo systemctl enable promtail.service
sudo systemctl start promtail.service
sudo systemctl status promtail.service
sudo systemctl daemon-reload
