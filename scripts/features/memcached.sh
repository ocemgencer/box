#!/usr/bin/env bash

# Install Memcached
# -qq implies -y --force-yes
if [ -f /home/vagrant/.homestead-features/memcached ]
then
    echo "Memcached already installed."
    exit 0
fi

touch /home/vagrant/.homestead-features/memcached
chown -Rf vagrant:vagrant /home/vagrant/.homestead-features

sudo apt-get install -qq memcached
