#!/bin/bash
# Debian 10.10
# Install NodeJS with NPM and Yarn and curl

# Add Public Key for Yarn

curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -

echo "deb https://dl.yarnpkg.com/debian stable main" | tee /etc/apt/sources.list.d/yarn.list

curl -sL https://deb.nodesource.com/setup_14.x | bash -

apt update

apt install curl gcc g++ make nodejs yarn -y 

echo "Done!"

