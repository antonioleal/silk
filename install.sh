#!/bin/bash

# Make sure only root can run our script
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd $SCRIPT_DIR

DEST=/usr/bin
mkdir -p $DEST

install -D -m0755 silk $DEST/silk
install -D -m0755 silk-shell $DEST/silk-shell

cp silk.png /usr/share/pixmaps
cp silk.desktop /usr/share/applications

rm -rf /usr/bin/sl
rm -rf /usr/bin/slapt
ln -s /usr/bin/silk /usr/bin/sl
ln -s /usr/bin/silk /usr/bin/slapt
