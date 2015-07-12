# dotvim

There maybe easier ways to do this, but my process is to run these commands starting from your home folder:
```bash
git clone https://github.com/Balhaut/dotvim .vim
ln -s ~/.vim/.vimrc
cd .vim
git submodule init
git submodule update --checkout
vim +PluginInstall
```
That will load vim and install the plugins in .vimrc.
