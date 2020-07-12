#!/usr/bin/env bash

if [ -f /home/vagrant/.homestead-features/googlesdk ]
then
    echo "Google SDK already installed."
    exit 0
fi

touch /home/vagrant/.homestead-features/googlesdk
chown -Rf vagrant:vagrant /home/vagrant/.homestead-features

# Install Google SDK

echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
sudo apt-get install google-cloud-sdk
