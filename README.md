# dotvim

There maybe easier ways to do this, but my process is to run these commands starting from your home folder:
```bash
# Symlink .vimrc from home to this repo's .vimrc.
ln -s ~/.vim/.vimrc

# Install vim-plug (we don't keep it in this repository).
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Open vim and run PlugInstall or from the command line...
vim +PlugInstall
```
That will load vim and install the plugins in .vimrc.

##Notes
I'm a newbie to vim at this time, so the arrow keys have been bound to nothing to force better habits.

### Compiling YouCompleteMe

On an ubuntu VM, ensure vim 7.3.598+ compiled with +python.
```bash
sudo apt-get install build-essential cmake python-dev
cd ~/.vim/bundle/YouCompleteMe
./install.py --gocode-completer
```
This installs with golang support, reference the YCM [github](https://github.com/Valloric/YouCompleteMe) for more details.

### Compiling EasyMotion
The easymotion plugin requires vim compiled with ruby, and must be compiled with vim's version.

On OSX - If you're like me and have the env ruby set to Chef's, CommandT should be built with the system ruby instead, which should match the version vim was compiled with:
`/usr/bin/ruby extconf.rb && make`

