#!/bin/bash

# THE FOUR LINES BELOW SAYING "#############################################", AND THEN "[FROM DIGITALOCEAN] --- ", AND THEN TWO EMPTY LINES (WITH NO #), AND THEN A LINE CONSISTING ONLY OF "# ", AND THEN "#############################################" ONCE AGAIN IS MERELY FOR EASIER COPY/PASTING WHILE WORKING ON THIS SCRIPT 

#############################################
# [FROM DIGITALOCEAN] --->

# 
#############################################

#############################################
# [TESTING DOCUMENTATION] --->

# 
#############################################




# Explain limitations of this file
echo "This file is meant primarily for documenation purposes. At this time, the crux of the matter is that there are times commands will need to be run as sudo. It turns out putting sudo in a bash script is not as simple as when you put something like echo in the script. Surely, there are workarounds and even good solutions for this problem. However, at the moment, I such at bash scripting. The skill I currently want to improve is in react. Therefore, I'm not going to spend the time to figure out the best way to implement this. Ideally, in the future, I'll come back to this and write this file in such a way that it can actually automate setting up my environment by simply calling bash (whatever the name of that file is at the time). For now, you'll need to make due with copying and pasting lines one at a time. But, as I said, that will allow you (or rather, me) to get on with things to start working on a PERN stack. Other things to install include curl and (nothing else as of yet). Good luck my dude"

echo
echo

# Provide terminal user information about how to find instructions for setting up node.js
echo "Instructions on setting up node.js can be found at digitalocean.com/community/tutorials/how-to-set-up-a-node-js-application-for-production-on-ubuntu-16-04"

echo
echo

# Explain how installing nano would save a lot of heartache, even though it's not installed in this script
echo "You will need some kind of text editor in in order to complete these instructions. The instructions assume you have nano installed (though it's not mentioned in the Prerequisites section. For the sake of keeping this file as close to the instructions as possible, it is here assumed that you have nano installed locally. If you do not, you can use any text editor you'd like. However, understand any line that calls something like [$ nano honestly_you_should_probably_just_install_nano.txt], will not work if you don't have nano installed. If you have Visual Studio Code installed, you could instead replace that hypothetical line with [$ code honestly_you_should_probably_just_install_nano.txt] which is a simple enough fix, but it's something you must be aware of"

printf "\n\n--------------------------------------\n\n\n"


#############################################
# [FROM DIGITALOCEAN] --->

# <<<!!!--- PREREQUISITES ---!!!>>>
# This guide assumes that you have the following:
# (1) An Ubuntu 16.04 server, configured with a non-root user with sudo privileges, as described in the initial server setup guide for Ubuntu 16.04.
# (2) A domain name pointed at your server’s public IP, as per How to Set Up a Host Name with DigitalOcean. This tutorial will use example.com throughout.
# (3) Nginx installed, covered in How To Install Nginx on Ubuntu 16.04
# (4) Nginx configured with SSL using Let’s Encrypt certificates. How To Secure Nginx with Let’s Encrypt on Ubuntu 16.04 will walk you through the process.
# When you’ve completed the prerequisites you will have a server serving the default Nginx placeholder page at https://example.com/.
# Let’s get started by installing the Node.js runtime on your server.

# <<<!!!--- INSTALL NODE.JS ---!!!>>>
# We will install the latest LTS release of Node.js, using the NodeSource package archives.
# First, you need to install the NodeSource PPA in order to get access to its contents. Make sure you’re in your home directory, and use curl to retrieve the installation script for the Node.js 6.x archives:
#############################################

#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################
#############################################

#############################################

# [DEPENDENCY SETUP] --->

#############################################

#############################################
# [TESTING DOCUMENTATION] --->

# INSTALL CURL

# Deprecation warning is displayed: "Node.js 6.x LTS Boron is no longer actively supported! You will not receive security or critical stability updates for this version. You should migrate to a supported version of Node.js as soon as possible. Use the installation script that corresponds to the version of Node.js you wish to install. e.g. https://deb.nodesource.com/setup_10.x — Node.js 10 LTS "Dubnium" (recommended). https://deb.nodesource.com/setup_12.x — Node.js 12 LTS "Erbium". Please see https://github.com/nodejs/Release for details about which version may be appropriate for you. The NodeSource Node.js distributions repository contains information both about supported versions of Node.js and supported Linux distributions. To learn more about usage, see the repository: https://github.com/nodesource/distributions"

# The version previously recommended version is also depricated (messaging after curling that newer version). Went to Node.js's website and saw their recommendation of what to curl. Commented out DigitalOcean instruction and using the line from Node.js instead. That one worked
#############################################

sudo apt install curl

#############################################
# [TESTING DOCUMENTATION] --->

# INSTALL NODEJS
#############################################

sudo apt-get install -y nodejs

#############################################
# [TESTING DOCUMENTATION] --->

# INSTALL ANY OTHER DEPENDENCIES
#############################################

#############################################

# [PERN SETUP] --->

#############################################

cd ~

#############################################
# [TESTING DOCUMENTATION] --->

# CURL may not need to be installed. It has since been installed since testing, but commenting line out anyway until it definitely needs to be installed.
#############################################

# curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -

sudo bash nodesource_setup.sh

#############################################
# [FROM DIGITALOCEAN] --->

# You can inspect the contents of this script with nano (or your preferred text editor):
#############################################

nano nodesource_setup.sh

# MAY ALSO need to run [$ chmod +x nodesource_setup.sh]. However, this isn't in the DigitalOcean instructions, so it is commented out below to make it executable

# chmod +x nodesource_setup.sh

#############################################
# [FROM DIGITALOCEAN] --->

# And run the script under sudo:
#############################################

sudo bash nodesource_setup.sh

#############################################
# [FROM DIGITALOCEAN] --->

# The PPA will be added to your configuration and your local package cache will be updated automatically. After running the setup script from nodesource, you can install the Node.js package in the same way that you did above:
#############################################

sudo apt-get install nodejs

#############################################
# [FROM DIGITALOCEAN] --->

# The nodejs package contains the nodejs binary as well as npm, so you don’t need to install npm separately. However, in order for some npm packages to work (such as those that require compiling code from source), you will need to install the build-essential package:
#############################################

# At this time, I'm unsure whether or not the instruction above from DigitalOcean applies to this current use case. For this reason, the line below from the instructions is commented out. I considered either allowing the line below to be ran and then running [$ sudo apt-get install nodejs] afterwards or running the commented line below on its own. However, I'm taking this as one of those "cross that bridge when and if I get to it" moments, and sticking with the instructions on DigitalOcean as closely as possible.

# sudo apt-get install build-essential

#############################################
# [FROM DIGITALOCEAN] --->

# <<<!--- Note ---!>>>
# Note: When installing from the NodeSource PPA, the Node.js executable is called nodejs, rather than node.

# <<<!!!--- CREATE NODE.JS APPLICATION ---!!!>>>
# We will write a Hello World application that simply returns “Hello World” to any HTTP requests. This is a sample application that will help you get your Node.js set up, which you can replace with your own application–just make sure that you modify your application to listen on the appropriate IP addresses and ports.

# <<<!!!--- HELLO WORLD CODE ---!!!>>>
# First, create and open your Node.js application for editing. For this tutorial, we will use nano to edit a sample application called hello.js:
#############################################

cd ~
nano hello.js

#############################################
# [FROM DIGITALOCEAN] --->

# Insert the following code into the file. If you want to, you may replace the highlighted port, 8080, in both locations (be sure to use a non-admin port, i.e. 1024 or greater):

# <<<!!!- Non-bash code -!!!>>>
##    #!/usr/bin/env nodejs
##    var http = require('http');
##    http.createServer(function (req, res) {
##      res.writeHead(200, {'Content-Type': 'text/plain'});
##      res.end('Hello World\n');
##    }).listen(8080, 'localhost');
##    console.log('Server running at http://localhost:8080/');

# Now save and exit.
# This Node.js application simply listens on the specified address (localhost) and port (8080), and returns “Hello World” with a 200 HTTP success code. Since we’re listening on localhost, remote clients won’t be able to connect to our application.

# <<<!!!--- TEST APPLICATION ---!!!>>>
#############################################

chmod +x ./hello.js

#############################################
# [FROM DIGITALOCEAN] --->

# And run it like so:
#############################################

./hello.js

#############################################
# [FROM DIGITALOCEAN] --->

# <<<!!-- Output --!!>>>
## Server running at http://localhost:8080/


# <<<!--- Note ---!>>>
# Note: Running a Node.js application in this manner will block additional commands until the application is killed by pressing Ctrl-C.

# In order to test the application, open another terminal session on your server, and connect to localhost with curl:
#############################################

curl http://localhost:8080

#############################################
# [FROM DIGITALOCEAN] --->

# If you see the following output, the application is working properly and listening on the proper address and port:

# <<<!!-- Output --!!>>>
## Hello World


# If you do not see the proper output, make sure that your Node.js application is running, and configured to listen on the proper address and port.
# Once you’re sure it’s working, kill the application (if you haven’t already) by pressing Ctrl+C

# <<<!!!--- INSTALL PM2 ---!!!>>>
# Now we will install PM2, which is a process manager for Node.js applications. PM2 provides an easy way to manage and daemonize applications (run them in the background as a service).
# We will use npm, a package manager for Node modules that installs with Node.js, to install PM2 on our server. Use this command to install PM2:
#############################################

sudo npm install -g pm2

#############################################
# [FROM DIGITALOCEAN] --->

# The -g option tells npm to install the module globally, so that it’s available system-wide.
# <<<!!!--- MANAGE APPLICATION WITH PM2 ---!!!>>>
# PM2 is simple and easy to use. We will cover a few basic uses of PM2.
# <<<!!!--- START APPLICATION ---!!!>>>
# The first thing you will want to do is use the pm2 start command to run your application, hello.js, in the background:
#############################################

pm2 start hello.js

#############################################
# [FROM DIGITALOCEAN] --->

# This also adds your application to PM2’s process list, which is outputted every time you start an application:

# <<<!!-- Output --!!>>>
## [PM2] Spawning PM2 daemon
## [PM2] PM2 Successfully daemonized
## [PM2] Starting hello.js in fork_mode (1 instance)
## [PM2] Done.
## ┌──────────┬────┬──────┬──────┬────────┬─────────┬────────┬─────────────┬──────────┐
## │ App name │ id │ mode │ pid  │ status │ restart │ uptime │ memory      │ watching │
## ├──────────┼────┼──────┼──────┼────────┼─────────┼────────┼─────────────┼──────────┤
## │ hello    │ 0  │ fork │ 3524 │ online │ 0       │ 0s     │ 21.566 MB   │ disabled │
## └──────────┴────┴──────┴──────┴────────┴─────────┴────────┴─────────────┴──────────┘
## Use `pm2 show <id|name>` to get more details about an app

# As you can see, PM2 automatically assigns an App name (based on the filename, without the .js extension) and a PM2 id. PM2 also maintains other information, such as the PID of the process, its current status, and memory usage.

# Applications that are running under PM2 will be restarted automatically if the application crashes or is killed, but an additional step needs to be taken to get the application to launch on system startup (boot or reboot). Luckily, PM2 provides an easy way to do this, the startup subcommand.

# The startup subcommand generates and configures a startup script to launch PM2 and its managed processes on server boots:
#############################################

pm2 startup systemd

#############################################
# [FROM DIGITALOCEAN] --->

# The last line of the resulting output will include a command that you must run with superuser privileges:

# <<<!!-- Output --!!>>>
## [PM2] Init System found: systemd
## [PM2] You have to run this command as root. Execute the following command:
## sudo env PATH=$PATH:/usr/bin /usr/lib/node_modules/pm2/bin/pm2 startup systemd -u sammy --hp /home/sammy

# Run the command that was generated (similar to the highlighted output above, but with your username instead of sammy) to set PM2 up to start on boot (use the command from your own output):
#############################################

sudo env PATH=$PATH:/usr/bin /usr/lib/node_modules/pm2/bin/pm2 startup systemd -u sammy --hp /home/sammy

#############################################
# [FROM DIGITALOCEAN] --->

# This will create a systemd unit which runs pm2 for your user on boot. This pm2 instance, in turn, runs hello.js. You can check the status of the systemd unit with systemctl:
#############################################

systemctl status pm2-sammy

#############################################
# [FROM DIGITALOCEAN] --->

# For a detailed overview of systemd, see Systemd Essentials: Working with Services, Units, and the Journal.

# <<<!!!--- OTHER PM2 USAGE (OPTIONAL) ---!!!>>>

# PM2 provides many subcommands that allow you to manage or look up information about your applications. Note that running pm2 without any arguments will display a help page, including example usage, that covers PM2 usage in more detail than this section of the tutorial.

# Stop an application with this command (specify the PM2 App name or id):
#############################################

pm2 stop app_name_or_id

#############################################
# [FROM DIGITALOCEAN] --->

# Restart an application with this command (specify the PM2 App name or id):
#############################################

pm2 restart app_name_or_id

#############################################
# [FROM DIGITALOCEAN] --->

# The list of applications currently managed by PM2 can also be looked up with the list subcommand:
#############################################

pm2 list

#############################################
# [FROM DIGITALOCEAN] --->

# More information about a specific application can be found by using the info subcommand (specify the PM2 App name or id):
#############################################

pm2 info example

#############################################
# [FROM DIGITALOCEAN] --->

# The PM2 process monitor can be pulled up with the monit subcommand. This displays the application status, CPU, and memory usage:
#############################################

pm2 monit

#############################################
# [FROM DIGITALOCEAN] --->

# Now that your Node.js application is running, and managed by PM2, let’s set up the reverse proxy.

# <<<!!!--- SET UP NGINX AS A REVERSE PROXY SERVER ---!!!>>>

# Now that your application is running, and listening on localhost, you need to set up a way for your users to access it. We will set up the Nginx web server as a reverse proxy for this purpose.

# In the prerequisite tutorial, we set up our Nginx configuration in the /etc/nginx/sites-available/default file. Open the file for editing:
#############################################

sudo nano /etc/nginx/sites-available/default

#############################################
# [FROM DIGITALOCEAN] --->

# Within the server block you should have an existing location / block. Replace the contents of that block with the following configuration. If your application is set to listen on a different port, update the highlighted portion to the correct port number.

# <<<!!-- /etc/nginx/sites-available/default --!!>>>
## . . .
##     location / {
##         proxy_pass http://localhost:8080;
##         proxy_http_version 1.1;
##         proxy_set_header Upgrade $http_upgrade;
##         proxy_set_header Connection 'upgrade';
##         proxy_set_header Host $host;
##         proxy_cache_bypass $http_upgrade;
##     }
## }

# This configures the server to respond to requests at its root. Assuming our server is available at example.com, accessing https://example.com/ via a web browser would send the request to hello.js, listening on port 8080 at localhost.

# You can add additional location blocks to the same server block to provide access to other applications on the same server. For example, if you were also running another Node.js application on port 8081, you could add this location block to allow access to it via http://example.com/app2:

# <<<!!-- /etc/nginx/sites-available/default — Optional --!!>>>
##     location /app2 {
##         proxy_pass http://localhost:8081;
##         proxy_http_version 1.1;
##         proxy_set_header Upgrade $http_upgrade;
##         proxy_set_header Connection 'upgrade';
##         proxy_set_header Host $host;
##         proxy_cache_bypass $http_upgrade;
##     }

# Once you are done adding the location blocks for your applications, save and exit.

# Make sure you didn’t introduce any syntax errors by typing:
#############################################

sudo nginx -t

#############################################
# [FROM DIGITALOCEAN] --->

# Next, restart Nginx:
#############################################

sudo systemctl restart nginx

#############################################
# [FROM DIGITALOCEAN] --->

# Assuming that your Node.js application is running, and your application and Nginx configurations are correct, you should now be able to access your application via the Nginx reverse proxy. Try it out by accessing your server’s URL (its public IP address or domain name).

# <<<!!!--- CONCLUSION ---!!!>>>
# Congratulations! You now have your Node.js application running behind an Nginx reverse proxy on an Ubuntu 16.04 server. This reverse proxy setup is flexible enough to provide your users access to other applications or static web content that you want to share. Good luck with your Node.js development!
#############################################
