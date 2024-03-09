#!/bin/sh
apt-get update
apt-get install -y git
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
# ??? sudo systemctl enable puma.service
