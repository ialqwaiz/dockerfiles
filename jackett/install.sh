#!/bin/bash
set -e

# use US mirror
sed -i 's/httpredir/ftp.us/g' /etc/apt/sources.list

apt-get -y clean
apt-get -y update
apt-get -y upgrade
apt-get -y install curl libmono-cil-dev

ver=$(curl https://github.com/Jackett/Jackett/releases/latest | sed 's|.*tag/\([^"]\+\).*|\1|')

mkdir -p /build
cd /build
curl -L -o jackett.tar.gz https://github.com/Jackett/Jackett/releases/download/${ver}/Jackett.Binaries.Mono.tar.gz
tar xvf jackett.tar.gz -C /opt

cd /
rm -rf /build
apt-get -y clean
rm -rf /var/lib/apt/lists/*
