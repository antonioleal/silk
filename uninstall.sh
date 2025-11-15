#!/bin/bash

# Make sure only root can run our script
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

rm -rf /usr/bin/silk
rm -rf /usr/bin/silk-shell
rm -rf /usr/share/pixmaps/silk.png
rm -rf /usr/share/applications/silk.desktop
