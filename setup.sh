echo "catting public key, copy/paste into: https://github.com/settings/ssh/new"
echo ""
cat $HOME/.ssh/id_rsa.pub
echo ""

read -p "Press [Enter] when done."
git clone git@github.com:larrybolt/dotfiles.git $HOME/dotfiles

cd $HOME/dotfiles
ln -nfs $HOME/dotfiles/.bash_aliases $HOME/.bash_aliases
