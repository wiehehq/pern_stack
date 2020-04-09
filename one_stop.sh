#!bin/bash

sudo -u dev-username whoami
sudo -u dev-username apt -y update && apt -y upgrade
sudo -u dev-username apt install -y curl
sudo -u dev-username curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
sudo -u dev-username command -v nvm
sudo -u dev-username nvm --version
sudo -u dev-username nvm install -y node
sudo -u dev-username node --version
sudo -u dev-username nvm install -y --lts
sudo -u dev-username nvm alias default node
sudo -u dev-username nvm ls
