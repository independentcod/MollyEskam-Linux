#!/bin/bash
function argv {
    for a in ${BASH_ARGV[*]} ; do
      echo -n "$a "
    done
    echo
}
VARIANT=$argv[1]
ARCH=amd64
cp /etc/apt/sources.list /root/sources.list.bak -r;
apt install gnupg -y;
echo deb http://http.kali.org/kali kali-rolling main contrib non-free >/etc/apt/sources.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys ED444FF07D8D0BF6;
apt update;
apt install -y live-build kali-archive-keyring curl cdebootstrap git;
cd live-build-config/;
./build.sh --verbose --variant $VARIANT --arch $ARCH;
cp /root/sources.list.bak /etc/apt/sources.list -r;
