#!/bin/sh
apt update
apt -o DPkg::Lock::Timeout=60 upgrade -y
apt -o DPkg::Lock::Timeout=60 install -y ruby-full ruby-bundler build-essential
