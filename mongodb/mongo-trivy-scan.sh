docker pull mongo
sudo apt-get install rpm
wget -q https://github.com/aquasecurity/trivy/releases/download/v0.40.0/trivy_0.40.0_Linux-64bit.deb
sudo dpkg -i trivy_0.40.0_Linux-64bit.deb
mkdir trivyScan
trivy image --scanners vuln,config,secret --severity CRITICAL,HIGH mongo
