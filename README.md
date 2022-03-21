# UnrealIRCd Docker
This repository provides the necessary tools to build and host an Unreal IRC Daemon in a Docker container.
## Features
The `Dockerfile` provides:
* Compilation of the latest UnrealIRCd source into a Docker image.
* Configuration of the IRC daemon to run as a non-root user.
* Removal of all build tools and artifacts from the image.

The `docker-compose.yml` file provides:
* A convenient method to manage running container instances.
* Persistent storage for configuration and data files.
* Mapping of IRC ports from host to container.

In addition, an easy installation script is provided which:
* Creates an example configuration file.
* Creates a self-signed SSL certificate.
* Sets correct ownership and permissions on the configuration and data files.
* Sets up syslog logging and log rotation.
### Table of Contents  
- [Requirements](#requirements)  
- [Installation](#installation)  
  * [Simple](#simple)  
  * [Manual](#manual)  
- [Operations](#operations)  
  * [Starting and Stopping the Server](#starting-and-stopping-the-server)
  * [Updating the Configuration](#updating-the-configuration)
  * [Updating the SSL Certificate](#updating-the-ssl-certificate)
  * [Updating UnrealIRCd](#updating-unrealircd)
- [Conclusion](#conclusion)
## Requirements
1. Install [Docker](https://docs.docker.com/engine/install/debian/)
2. Install [docker-compose](https://docs.docker.com/compose/install/)
3. If using the easy installation script:

The easy installation script expects your host machine to have `sudo`, `rsyslog`, `logrotate`, and `openssl` installed:
```
apt-get update && apt-get install sudo rsyslog logrotate openssl
```
It also expects your user account to have `sudo` access to the `root` user:
```
usermod -aG sudo your_username
```
This is to allow it to set the correct ownership & permissions on the IRC server's configuration and data files, generate a self-signed SSL certificate, and install logging configurations on the host machine.

**Note**: If these additional features are not required, please follow the instructions for a [manual installation](#manual).
## Installation
### Simple
1. Clone the repository and change into its directory:
```
git clone https://github.com/agamemnon23/unrealircd.git
cd unrealircd
```
2. Run the installation script.
```
./install.sh
```
3. Configure the IRC server by editing `config/unrealircd.conf`:
```
sudo nano config/unrealircd.conf
```
4. If you have your own existing SSL certificate, copy it into the configuration directory:
```
sudo cp /path/to/your/ssl/key config/tls/server.key.pem
sudo cp /path/to/your/ssl/cert config/tls/server.cert.pem
```
5. Ensure ownership & permissions are correct on all files:
```
sudo chown -R 999:999 config data
sudo chmod -R go-rwx config/*
```
6. If the server was configured to use any ports other than the defaults (**6667**, **6697**, and **6690**), and them to the `ports` section of the `docker-compose.yml` file:
```
ports:
  - 6667:6667/tcp
  - 6697:6697/tcp
  - 6900:6900/tcp
```
7. Start the IRC server:
```
docker-compose up -d
```
8. Check the logs for any problems:
```
tail -f /var/log/unrealircd/unrealircd.log
```
### Manual
1. Clone the repository and change into its directory:
```
git clone https://github.com/agamemnon23/unrealircd.git
cd unrealircd
```
2. Copy and edit the example configuration file:
```
cp config/examples/example.conf config/unrealircd.conf
nano config/unrealircd.conf
```
3. Set up an SSL certificate:

**Existing Certificate**
```
cp /path/to/your/ssl/key config/tls/server.key.pem
cp /path/to/your/ssl/cert config/tls/server.cert.pem
```
**Self-Signed Certificate**
```
openssl req \
	-x509 \
	-sha256 \
	-nodes \
	-days 365 \
	-subj "/C=US/O=IRC/OU=IRC/CN=irc.example.org" \
	-newkey rsa:2048 \
	-keyout config/tls/server.key.pem \
	-out config/tls/server.cert.pem
```
**Let's Encrypt Certificate**
```
certbot certonly --email you@example.org --agree-tos --no-eff-email -d irc.example.org

cp /etc/letsencrypt/live/irc.example.org/privkey.pem config/tls/server.key.pem
cp /etc/letsencrypt/live/irc.example.org/fullchain.pem config/tls/server.cert.pem
```
4. Create a directory for the IRC server to store its data:
```
mkdir data
```
5. Ensure ownership & permissions are correct on all files:
```
sudo chown -R 999:999 config data
sudo chmod -R go-rwx config/*
```
6. Create a directory to store the log files (e.g. `/var/log/unrealircd`):
```
sudo mkdir /var/log/unrealircd
```
7. Create an `rsyslog` configuration file (e.g. `/etc/rsyslog.d/unrealircd.conf`):
```
:syslogtag, contains, "unrealircd" /var/log/unrealircd/unrealircd.log
& stop
```
8. Restart `rsyslog`:
```
sudo systemctl restart rsyslog
```
9. Create a `logrotate` configuration file (e.g. `/etc/logrotate.d/unrealircd`):
```
/var/log/unrealircd/unrealircd.log {
    daily
    rotate 28
    copytruncate
    compress
    delaycompress
    notifempty
    missingok
}
```
10. If desired, modify the container's **locale** and **timezone** (currently defaulted to **UK**) by editing the `Dockerfile`:
```
nano Dockerfile
```
11. If desired, modify the compilation arguments by editing `config.settings`:
```
nano config.settings
```
12. Build the container image:
```
docker-compose build --no-cache
```
13. If the server was configured to use any ports other than the defaults (**6667**, **6697**, and **6690**), and them to the `ports` section of the `docker-compose.yml` file:
```
ports:
  - 6667:6667/tcp
  - 6697:6697/tcp
  - 6900:6900/tcp
```
14. Start the IRC server:
```
docker-compose up -d
```
15. Check the logs for any problems:
```
tail -f /var/log/unrealircd/unrealircd.log
```
## Operations
### Starting and Stopping the Server
The container can be started and stopped as follows:
```
docker-compose up -d
docker-compose down
```
### Updating the Configuration
The configuration can be updated at any time by editing `conf/unrealircd.conf` then *rehashing* the server:

**Note**: *Rehashing* an IRC server reloads its configuration file without requiring a full restart.
```
sudo nano conf/unrealircd.conf
docker exec -it unrealircd /unrealircd/unrealircd rehash
```
### Updating the SSL Certificate
Similarly, the SSL certificate can be updated at any time and the server *rehashed*:
```
sudo cp /path/to/your/ssl/key config/tls/server.key.pem
sudo cp /path/to/your/ssl/cert config/tls/server.cert.pem

sudo chown 999:999 config/tls/*.pem
sudo chmod 0600 config/tls/*.pem

docker exec -it unrealircd /unrealircd/unrealircd rehash
```
### Updating UnrealIRCd
1. Rebuild the container image

As the Dockerfile pulls down the latest source code for UnrealIRCd, it is necessary to fully rebuild all image overlays when updating:
```
docker-compose build --no-cache
```
2. Restart the running container:
```
docker-compose down
docker-compose up -d
```
## Conclusion
Happy IRCing! See you on [bash.org](http://bash.org)!
