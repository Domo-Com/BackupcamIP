#!/bin/bash
echo "=============================================="
echo "Install exe ...."
echo "NOTE: ."
echo "=============================================="

#echo "Download and Install dependencies. One Moment Please ..."
wget https://raw.github.com/Domo-Com/BackupcamIP/master/backupcamip.tar.gz

sudo tar -pxvf backupcamip.tar.gz
DIRECTORY=/usr/lib/backupcamip/
echo "Copying to /usr/lib/"
cd ./backupcamip/
sudo chmod +x backupcamip
sudo chmod +x sync.sh
if [ ! -d "$DIRECTORY" ]; then
  sudo mkdir /usr/lib/backupcamip/
fi
sudo cp -R ./* /usr/lib/backupcamip/

if [ ! -d "$DIRECTORY" ]; then
  sudo ln -sv /usr/lib/backupcamip/backupcamip /usr/bin/backupcamip
fi
cd ..
sudo rm -rf backupcamip
sudo rm -rf backupcamip.tar.gz
echo "==============  version ================"


