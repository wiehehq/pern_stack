#!bin/bash

printf "\n\n\n\n\nCALLING ---> [$ sudo -u dev-username whoami]\n\n\n\n\n"
sudo -u dev-username whoami
printf "\n\n\n\n\nCALLING ---> [$ sudo whoami]\n\n\n\n\n"
sudo whoami
sudo apt -y update
sudo apt -y upgrade
printf "\n\n\n\n\nCALLING ---> [$ sudo apt install -y curl]\n\n\n\n\n"
sudo apt install -y curl
printf "\n\n\n\n\nCALLING ---> [$ sudo -u dev-username curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash]\n\n\n\n\n"
sudo -u dev-username curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
printf "\n\n\n\n\nCALLING ---> [$ sudo -u dev-username command -v nvm]\n\n\n\n\n"
sudo -u dev-username command -v nvm
printf "\n\n\n\n\nCALLING ---> [$ sudo -u dev-username nvm --version]\n\n\n\n\n"
sudo -u dev-username nvm --version
printf "\n\n\n\n\nCALLING ---> [$ sudo -u dev-username nvm install -y node]\n\n\n\n\n"
sudo -u dev-username nvm install -y node
printf "\n\n\n\n\nCALLING ---> [$ sudo -u dev-username node --version]\n\n\n\n\n"
sudo -u dev-username node --version
printf "\n\n\n\n\nCALLING ---> [$ sudo -u dev-username nvm install -y --lts]\n\n\n\n\n"
sudo -u dev-username nvm install -y --lts
printf "\n\n\n\n\nCALLING ---> [$ sudo -u dev-username nvm alias default node]\n\n\n\n\n"
sudo -u dev-username nvm alias default node
printf "\n\n\n\n\nCALLING ---> [$ sudo -u dev-username nvm ls]\n\n\n\n\n"
sudo -u dev-username nvm ls
