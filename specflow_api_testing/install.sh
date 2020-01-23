apt-get update
apt-get install wget
wget -q https://packages.microsoft.com/config/ubuntu/19.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
apt-get update
apt-get install apt-transport-https
apt-get update
apt-get install dotnet-sdk-3.1
