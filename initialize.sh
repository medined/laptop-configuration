sudo cp /etc/fstab /etc/fstab.original
sudo cp ./etc/fstab /etc/fstab
echo "Overwrote /etc/fstab"

sudo cp /etc/default/docker /etc/default/docker.original
sudo cp ./etc/default/docker /etc/default/docker
echo "Overwrite /etc/default/docker"

PDIR=$(pwd)
pushd $HOME > /dev/null
rm -f .bashrc .dockerfunc
ln -s $PDIR/.bashrc .bashrc
echo "Create symbolic link for .bashrc"
ln -s $PDIR/.dockerfunc .dockerfunc
echo "Create symbolic link for .dockerfunc"
popd > /dev/null
