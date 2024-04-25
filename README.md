# vimrc

Put in your home folder (linux) and change from `vimrc` to `.vimrc`.

You can do this running the command:

```shell
# WARNING: your current .vimrc will be replaced
wget -O ~/.vimrc https://raw.githubusercontent.com/rhobernardi/vimrc/master/vimrc && vim -c 'PlugInstall' -c 'q' -c 'q'
```

Also works in `nvim`:

```shell
# WARNING: your current .nvimrc will be replaced
wget -O ~/.nvimrc https://raw.githubusercontent.com/rhobernardi/vimrc/master/vimrc && nvim -c 'PlugInstall' -c 'q' -c 'q'
```
