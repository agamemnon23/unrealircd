#!/usr/bin/env bash

red="\e[31m"
cyan="\e[36m"
normal="\e[39m"

function inform {
    time=$(date +"%d-%m-%Y %T")
    echo -e "${cyan}$time${normal}":  "$@"
}


# Check all prerequisite software is installed, exit if not
if ! command -v sudo &> /dev/null; then
    echo "The \"sudo\" command could not be found."
    echo "Please ensure it is installed (apt-get update && apt-get install sudo) and that your user is configured with root access."
    exit 1
elif ! command -v /usr/sbin/rsyslogd &> /dev/null; then
    echo "The \"rsyslog\" daemon could not be found."
    echo "Please ensure it is installed (sudo apt-get update && sudo apt-get install rsyslog)."
    exit 1
elif ! command -v /usr/sbin/logrotate &> /dev/null; then
    echo "The \"logrotate\" command could not be found."
    echo "Please ensure it is installed (sudo apt-get update && sudo apt-get install logrotate)."
    exit 1
elif ! command -v openssl &> /dev/null; then
    echo "The \"openssl\" command could not be found"
    echo "Please ensure it is installed (sudo apt-get update && sudo apt-get install openssl)."
    exit 1
elif ! command -v docker &> /dev/null; then
    echo "The \"docker\" command could not be found."
    echo "Please ensure it is installed (see https://docs.docker.com/engine/install)."
    exit 1
elif ! command -v docker-compose &> /dev/null; then
    echo "The \"docker-compose\" command could not be found."
    echo "Please ensure it is installed (see https://docs.docker.com/compose/install)."
    exit 1
fi


# Display startup banner
inform "${cyan}###########################################################${normal}"
inform "${cyan}#${normal}     UnrealIRCd Docker Container Installation Script     ${cyan}#${normal}"
inform "${cyan}###########################################################${normal}"


# Set up syslog logging and log rotation
inform
inform "Setting up syslog logging and log rotation:"
inform  "    - /var/log/unrealircd/unrealircd.log"
if [ ! -d "/var/log/unrealircd" ]; then
    sudo mkdir /var/log/unrealircd
fi
sudo bash -c 'cat << EOF > /etc/rsyslog.d/unrealircd.conf
:syslogtag, contains, "unrealircd" /var/log/unrealircd/unrealircd.log
& stop
EOF'
sudo bash -c 'cat << EOF > /etc/logrotate.d/unrealircd
/var/log/unrealircd/unrealircd.log {
    daily
    rotate 28
    copytruncate
    compress
    delaycompress
    notifempty
    missingok
}
EOF'
sudo systemctl restart rsyslog.service


# Create self-signed SSL certificate
inform
inform "Creating self-signed SSL certificate:"
inform "    - ./config/tls/server.key.pem"
inform "    - ./config/tls/server.cert.pem"
openssl req \
	-x509 \
	-sha256 \
	-nodes \
	-days 365 \
	-subj "/C=US/O=IRC/OU=IRC/CN=irc.example.org" \
	-newkey rsa:2048 \
	-keyout config/tls/server.key.pem \
	-out config/tls/server.cert.pem \
        > /dev/null 2>&1

# Create example config file
inform
inform "Creating example config file:"
inform "    - ./config/unrealircd.conf"
cp config/examples/example.conf config/unrealircd.conf


# Create data directory
inform
inform "Creating data directory:"
inform "    - ./data"
if [ ! -d "data" ]; then
    mkdir data
fi


# Set ownership and permissions on files
inform
inform "Setting ownership and permissions on files:"
inform "    - ./config"
sudo chown -R 999:999 config data
sudo chmod -R go-rwx config/*


# Build container
inform
inform "Building container"
inform "    - WARNING: This may take a few minutes to complete."
inform "    - Press any key to begin..."
while true; do
    if read -rt 3 -n 1; then
        break;
    fi
done
docker-compose build --no-cache


# Inform user of the next steps
echo
echo
inform "${cyan}###########################################################${normal}"
inform "${cyan}#${normal}       Congratulations! Installation is complete!        ${cyan}#${normal}"
inform "${cyan}###########################################################${normal}"
inform
inform "${red}Please note, as the IRC server runs as a non-root user (UID 999),${normal}"
inform "${red}when editing the configuration file or SSL certificate it is${normal}"
inform "${red}necessary to use \"sudo\" on the host machine.${normal}"
inform
inform "${red}You have a few critical steps left before starting your server:${normal}"
inform
inform "1/ If you have your own SSL certificate, copy it to \"config/tls\":"
inform "      sudo cp /path/to/your/ssl/key config/tls/server.key.pem"
inform "      sudo cp /path/to/your/ssl/cert config/tls/server.cert.pem"
inform
inform "2/ Configure the IRC server by editing \"config/unrealircd.conf\":"
inform "      sudo nano config/unrealircd.conf"
inform
inform "3/ Ensure ownership & permissions are correct on all config files:"
inform "      sudo chown -R 999:999 config"
inform "      sudo chmod -R go-rwx config/*"
inform
inform "4/ Start the IRC server:"
inform "      docker-compose up -d"
inform
inform "5/ Check your logs for any problems:"
inform "      tail -f /var/log/unrealircd/unrealircd.log"
echo
echo
