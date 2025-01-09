# vimrc

Put in your home folder (linux) and change from `vimrc` to `.vimrc`.

You can do this running the command:

```shell
sudo apt install vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp ~/.vimrc ~/.vimrc.bak
wget -O ~/.vimrc https://raw.githubusercontent.com/rhobernardi/vimrc/master/vimrc
vim -c 'PlugInstall | q | q'
```

