#!/usr/bin/env bash

if [ -f /home/vagrant/.homestead-features/heroku ]
then
    echo "Heroku Toolbelt already installed."
    exit 0
fi

touch /home/vagrant/.homestead-features/heroku
chown -Rf vagrant:vagrant /home/vagrant/.homestead-features

curl https://cli-assets.heroku.com/install-ubuntu.sh | sh
