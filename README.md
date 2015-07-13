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

###Notes
I'm a newbie to vim at this time, so the arrow keys have been bound to nothing to force better habits.

The easymotion plugin requires vim compiled with ruby, and has to be compiled itself with the same ruby version.
If you're like me and have the env ruby set to Chef's, CommandT should be built with the OSX ruby instead, which should match the version vim was compiled with:
`/usr/bin/ruby extconf.rb && make`

