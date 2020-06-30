# UnrealIRCd Docker Image
The Unreal IRC Daemon in a Docker image, with persistent storage volumes for configuration and transient data.

A *docker-compose.yaml* is provided for starting, stopping, and building container instances.

Helper scripts are also provided to allow easy installation and updating of configuration files and SSL certificates, and for backing up and restoring the volumes.

Logging is routed to syslog on the host machine, and tagged for easy filtering.

## Installation
Clone the repository and change into its directory:
```
git clone https://github.com/agamemnon23/unrealircd.git
cd unrealircd
```
Build the Docker image and start a container to initialise your persistent storage volumes:
* unrealircd-conf (stores the server configuration and SSL certificate/private key)
* unrealircd-data (stores transient data)
```
docker-compose up -d
```
As we haven't yet created an *unrealircd.conf* file, the UnrealIRCd daemon will fail to start properly. Stop the container:
```
docker-compose down
```
Copy the supplied *example.conf* file to *unrealircd.conf*, and configure it with the settings you wish to use:
```
cp example.conf unrealircd.conf
vi unrealircd.conf
```
Install your finished *unrealircd.conf* file on the *unrealircd-conf* volume using the supplied helper script:
```
./installconfig unrealircd.conf
```
Generate an SSL certificate for your server with LetsEncrypt:
```
sudo certbot certonly --standalone -d irc.example.com
```
Install the certificate and private key on the *unrealircd-conf* volume using the supplied helper script:
```
sudo ./installcert irc.example.com
```
Congratulations! You are ready to run your IRC server.
## Operation
You can start and stop the container as follows:
```
docker-compose up -d
docker-compose down
```
## Updating the Configuration
You can update the configuration at any time by editing the local *unrealircd.conf* file and installing it to the *unrealircd-conf* volume the same way that you initially set it up.

The container must be shut down when you install the file with the helper script.
```
vi unrealircd.conf
docker-compose down
./installconfig unrealircd.conf
docker-compose up -d
```
## Updating the SSL Certificate
Similarly, you can update the SSL certificate and private key at any time in the same way that you initially set them up.

Again, the container must be shut down when installing the files with the helper script.
```
certbot certonly --standalone -d irc.example.com
docker-compose down
sudo ./installcert irc.example.com
docker-compose up -d
```
## Updating the Docker Image
The Docker images itself can be updated anytime as follows:
```
git pull
docker-compose down
docker-compose build
docker-compose up -d
```
## Backing up the Persistent Storage Volumes
You can backup your persistent storage volumes to tar files using the supplied helper script:
```
./backup unrealircd-conf unrealircd-conf.tar
./backup unrealircd-data unrealircd-data.tar
```
These files can be restored as Docker volumes as follows. The volumes will be created if they do not already exist.
```
./restore unrealircd-conf.tar unrealircd-conf
./restore unrealircd-data.tar unrealircd-data
```
This means that restoring your IRC server on new hardware is as simple as:
```
git clone https://github.com/agamemnon23/unrealircd.git
cd unrealircd
./restore unrealircd-conf.tar unrealircd-conf
./restore unrealircd-data.tar unrealircd-data
docker compose up -d
```
## Logging
The UnrealIRCd has been configured to send its logs to stdout, so that they are captured by the Docker daemon and passed to syslog. They are tagged with *unrealircd* by the *docker-compose.yaml*.

This means they can be filtered on the host machine with a syslog rule such as:
```
# /etc/rsyslog.d/01-unrealircd.conf
:syslogtag, contains, "unrealircd" -/var/log/unrealircd/unrealircd.log
& stop
```
This log file can be rotated with a logrotate configuration such as:
```
# /etc/logrotate.d/unrealircd
/var/log/unrealircd/unrealircd.log {
    daily
    rotate 28
    compress
    delaycompress
    missingok
    copytruncate
}
```
## Conclusion
Happy IRCing! See you on [bash.org](http://bash.org)!
