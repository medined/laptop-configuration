sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y git terminator

git config --global user.email "david.medinets@gmail.com"
git config --global user.name "David Medinets"


# Mount the 960GB drive
sudo cp /etc/fstab /etc/fstab.original
sudo cp ./etc/fstab /etc/fstab
echo "Overwrote /etc/fstab"

# Install docker. SUDO password will be prompted.

wget -qO- https://get.docker.com/ | sh

sudo usermod -aG docker $USER

# Configure docker to use 960GB drive
sudo cp /etc/default/docker /etc/default/docker.original
sudo cp ./etc/default/docker /etc/default/docker
echo "Overwrite /etc/default/docker"

PDIR=$(pwd)
pushd $HOME > /dev/null
rm -f .bashrc .dockerfunc .vimrc
cp $PDIR/.bashrc     .bashrc
cp $PDIR/.dockerfunc .dockerfunc
cp $PDIR/.vimrc      .vimrc

popd > /dev/null


