sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y git hostess terminator

git config --global user.email "david.medinets@gmail.com"
git config --global user.name "David Medinets"

# Deal with files that are security sensitive.
PDIR=$(pwd)
pushd $HOME > /dev/null
rm -rf .ssh .netrc .irssi
ln -s /data/basho-medined-configuration-files/ssh .ssh
ln -s /data/basho-medined-configuration-files/netrc .netrc
ln -s /data/basho-medined-configuration-files/irssi .irssi
popd > /dev/null

# Mount the 960GB drive
sudo cp /etc/fstab /etc/fstab.original
sudo cp ./etc/fstab /etc/fstab
sudo mount -a
cd /data/projects/laptop-configuration
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
ln -s $PDIR/bashrc     .bashrc
ln -s $PDIR/dockerfunc .dockerfunc
ln -s $PDIR/vimrc      .vimrc
popd > /dev/null

echo "Stuff to do:"
echo " * install lastpass, omnibar in firefox"
echo " * install chrome. "
